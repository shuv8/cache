`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2023 18:47:12
// Design Name: 
// Module Name: cache
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module wdata_ks(cpu_wdata, ram_data, cache_data, addr_offset, b_val, wsel, m, wdata);
    localparam CPU_DATA_SIZE = 32;
    localparam DATA_SIZE = 128;
    localparam BVAL_SIZE = 4;
    localparam OFF_SIZE = 4;
    
    input wire [CPU_DATA_SIZE-1:0] cpu_wdata;
    input wire [DATA_SIZE-1:0] ram_data, cache_data;
    input wire [BVAL_SIZE-1:0] b_val;
    input wire [OFF_SIZE-1:0] addr_offset;
    input wire wsel;
    input wire m;
    
    output wire [DATA_SIZE-1:0] wdata;
    
    wire [DATA_SIZE-1:0] data = (wsel===1)?ram_data:cache_data;
    wire [CPU_DATA_SIZE-1:0] offset_data = data[addr_offset[3:2]*32 +: CPU_DATA_SIZE];
    wire [CPU_DATA_SIZE-1:0] m_offset_data;
    
    assign m_offset_data = (b_val=='b0001)?{offset_data[CPU_DATA_SIZE-1:8], cpu_wdata[7:0]}:
                         (b_val=='b0010)?{offset_data[CPU_DATA_SIZE-1:16], cpu_wdata[15:8], offset_data[7:0]}:
                         (b_val=='b0100)?{offset_data[CPU_DATA_SIZE-1:24], cpu_wdata[23:16], offset_data[15:0]}:
                         (b_val=='b1000)?{cpu_wdata[CPU_DATA_SIZE-1:24], offset_data[23:0]}:
                         (b_val=='b0011)?{offset_data[CPU_DATA_SIZE-1:16], cpu_wdata[15:0]}:
                         (b_val=='b1100)?{cpu_wdata[CPU_DATA_SIZE-1:16], offset_data[15:0]}:
                         (b_val=='b1111)?cpu_wdata:32'bx;
    
    assign wdata = (m==='b1)?((addr_offset[3:2]=='b00)?{data[DATA_SIZE-1:32], m_offset_data}:
                   (addr_offset[3:2]=='b01)?{data[DATA_SIZE-1:64], m_offset_data, data[31:0]}:
                   (addr_offset[3:2]=='b10)?{data[DATA_SIZE-1:96], m_offset_data, data[63:0]}:
                   (addr_offset[3:2]=='b11)?{m_offset_data, data[95:0]}:
                   128'bx):data;
endmodule

module ram_tag_ks(ltag, addr_tag, tsel, ram_tag);
    localparam TAG_SIZE = 12;
    input wire [TAG_SIZE-1:0] ltag, addr_tag;
    input wire tsel;
    output wire [TAG_SIZE-1:0] ram_tag;
    
    assign ram_tag = (tsel==='b0)?addr_tag:
                     (tsel==='b1)?ltag:12'bx;
endmodule

module r_data_ks(input_data, offset, output_data);
    localparam DATA_SIZE = 128;
    localparam OUT_SIZE = 32;
    
    input wire [DATA_SIZE-1:0] input_data;
    input wire [3:0] offset;
    output wire [OUT_SIZE-1:0] output_data;
    
    assign output_data = input_data[offset[3:2]*32 +: OUT_SIZE];
endmodule

module cache(
    CLK,
    areset,
    addr,
    cpu_wr,
    cpu_rd,
    w_data,
    b_val,
    r_data,
    cpu_ack,
    ram_wdata,
    ram_addr_tag,
    ram_wr,
    ram_rd,
    ram_rdata,
    ram_ack
);
    localparam ADDR_SIZE = 16;
    localparam ADDR_TAG_SIZE = 12;
    localparam CPU_DATA_SIZE = 32;
    localparam BVAL_SIZE = 4;
    localparam LINE_NUM_SIZE = 5;
    localparam LTAG_SIZE = ADDR_TAG_SIZE + 1;
    
    localparam RAM_DATA_SIZE = 128;
    localparam CACHE_DATA_SIZE = RAM_DATA_SIZE;
    
    input CLK, areset;
    //inputs-outputs of cpu
    input [ADDR_SIZE-1:0] addr;
    input cpu_wr, cpu_rd;
    input [CPU_DATA_SIZE-1:0] w_data;
    input [BVAL_SIZE-1:0] b_val;
    output wire [CPU_DATA_SIZE-1:0] r_data;
    output wire cpu_ack;
    //inputs-outputs of ram interface
    input [RAM_DATA_SIZE-1:0] ram_rdata;
    input ram_ack;
    output wire [RAM_DATA_SIZE-1:0] ram_wdata;
    output wire [ADDR_TAG_SIZE-1:0] ram_addr_tag;
    output wire ram_wr;
    output wire ram_rd;
    
    
    // lines between modules
    wire hit, lfu, m, wrT, wsel, tsel, wr_data;
    wire [LINE_NUM_SIZE-1:0] Line;
    wire [LTAG_SIZE-1:0] LTag;
    wire [CACHE_DATA_SIZE-1:0] cache_data_out;
    wire [CACHE_DATA_SIZE-1:0] cache_data_input;
    // modules
    tag_mem tag_mem (
        .CLK(CLK),
        .areset(areset),
        .addr_tag(addr[ADDR_SIZE-1:ADDR_SIZE-ADDR_TAG_SIZE]),
        .sig_wr(wrT),
        .sig_lfu(lfu),
        .sig_md(m),
        .Line(Line),
        .LTag(LTag),
        .Hit(hit)
    );
    
    control_unit control_unit (
        .CLK(CLK),
        .areset(areset),
        .cpu_wr(cpu_wr),
        .cpu_rd(cpu_rd),
        .hit(hit),
        .lm(LTag[0]),
        .ram_ack(ram_ack),
        .cpu_ack(cpu_ack),
        .lfu(lfu),
        .m(m),
        .wrT(wrT),
        .wr(wr_data),
        .wsel(wsel),
        .tsel(tsel),
        .ram_wr(ram_wr),
        .ram_rd(ram_rd)
    );
    
    wdata_ks wdata_ks (
        .cpu_wdata(w_data),
        .ram_data(ram_rdata),
        .cache_data(cache_data_out),
        .addr_offset(addr[ADDR_SIZE-ADDR_TAG_SIZE-1:0]),
        .b_val(b_val),
        .wsel(wsel),
        .m(m),
        .wdata(cache_data_input)
    );
    
    ram_tag_ks ram_tag_ks (
        .ltag(LTag[LTAG_SIZE-1:1]),
        .addr_tag(addr[ADDR_SIZE-1:ADDR_SIZE-ADDR_TAG_SIZE]),
        .tsel(tsel),
        .ram_tag(ram_addr_tag)
    );
    
    assign ram_wdata = cache_data_out;
    
    
    // DATA MEMORY
    integer i;
    reg [CACHE_DATA_SIZE-1:0] data_mem [31:0]; 
    always @(posedge CLK | areset) begin
        if (areset) for (i = 0; i < 32 ; i = i + 1)
            begin
            data_mem[i] = 128'b0;
            end
        if (wr_data==='b1) data_mem [Line] = cache_data_input;
    end
    assign cache_data_out = data_mem[Line];
    
    r_data_ks r_data_ks (
        .input_data(cache_data_out),
        .offset(addr[ADDR_SIZE-ADDR_TAG_SIZE-1:0]),
        .output_data(r_data)
    );
endmodule


module cache_memory(
    cpu_reset,
    cache_reset,
    ram_reset,
    cpu_clk,
    cache_clk,
    ram_clk,
    cpu_addr,
    cpu_wr,
    cpu_rd,
    cpu_wdata,
    cpu_bval,
    cpu_rdata,
    cpu_ack,
    ram_rdata,
    ram_ack,
    ram_wdata,
    ram_addr,
    ram_avalid,
    ram_rnw
);
    localparam ADDR_SIZE = 16;
    localparam ADDR_TAG_SIZE = 12;
    localparam CPU_DATA_SIZE = 32;
    localparam BVAL_SIZE = 4;
    localparam RAM_DATA_SIZE = 128;
    localparam RAM_BUS_SIZE = 8;
    localparam CACHE_DATA_SIZE = RAM_DATA_SIZE;
    
    input cpu_clk, cache_clk, ram_clk;
    input cpu_reset, cache_reset, ram_reset;
    
    // Inputs-outputs of CPU
    input [ADDR_SIZE-1:0] cpu_addr;
    input cpu_wr;
    input cpu_rd;
    input [CPU_DATA_SIZE-1:0] cpu_wdata;
    input [BVAL_SIZE-1:0] cpu_bval;
    
    output wire [CPU_DATA_SIZE-1:0] cpu_rdata;
    output wire cpu_ack;
    
    // Inputs-outputs of RAM
    input [RAM_BUS_SIZE-1:0] ram_rdata;
    input ram_ack;
    
    output wire [RAM_BUS_SIZE-1:0] ram_wdata;
    output wire [ADDR_TAG_SIZE-1:0] ram_addr;
    output wire ram_avalid;
    output wire ram_rnw;
    
    // Wires CPU - cache
    wire [ADDR_SIZE-1:0] cpu_cache_addr;
    wire cpu_cache_wr;
    wire cpu_cache_rd;
    wire [CPU_DATA_SIZE-1:0] cpu_cache_wdata;
    wire [BVAL_SIZE-1:0] cpu_cache_bval;
    wire [CPU_DATA_SIZE-1:0] cache_cpu_rdata;
    wire cache_cpu_ack;
    
    // Wires cache - RAM
    wire [ADDR_TAG_SIZE-1:0] cache_ram_addr;
    wire [CACHE_DATA_SIZE-1:0] cache_ram_wdata;
    wire cache_ram_rd;
    wire cache_ram_wr;
    wire [CACHE_DATA_SIZE-1:0] cache_ram_rdata;
    wire cache_ack;
    
    
    cpu_interface cpu_interface(
        .cpu_reset(cpu_reset),
        .cache_reset(cache_reset),
        .cpu_addr(cpu_addr),
        .cpu_wr(cpu_wr),
        .cpu_rd(cpu_rd),
        .cpu_wdata(cpu_wdata),
        .cpu_bval(cpu_bval),
        .cpu_clk(cpu_clk),
        .cpu_rdata(cpu_rdata),
        .cpu_ack(cpu_ack),
        .cache_rdata(cache_cpu_rdata),
        .cache_ack(cache_cpu_ack),
        .cache_clk(cache_clk),
        .cache_addr(cpu_cache_addr),
        .cache_wr(cpu_cache_wr),
        .cache_rd(cpu_cache_rd),
        .cache_wdata(cpu_cache_wdata),
        .cache_bval(cpu_cache_bval)
    );
    
    ram_interface ram_interface(
        .cache_wdata(cache_ram_wdata),
        .cache_addr(cache_ram_addr),    
        .cache_wr(cache_ram_wr),
        .cache_rd(cache_ram_rd),
        .cache_rst(cache_reset),
        .cache_clk(cache_clk),
        .cache_rdata(cache_ram_rdata),
        .cache_ack(cache_ack),
        .ram_rdata(ram_rdata),
        .ram_ack(ram_ack),
        .ram_rst(ram_reset),
        .ram_clk(ram_clk),
        .ram_wdata(ram_wdata),
        .ram_addr(ram_addr),
        .ram_avalid(ram_avalid),
        .ram_rnw(ram_rnw)  
    );
    
    cache cache(
        .CLK(cache_clk),
        .areset(cache_reset),
        .addr(cpu_cache_addr),
        .cpu_wr(cpu_cache_wr),
        .cpu_rd(cpu_cache_rd),
        .w_data(cpu_cache_wdata),
        .b_val(cpu_cache_bval),
        .r_data(cache_cpu_rdata),
        .cpu_ack(cache_cpu_ack),
        .ram_wdata(cache_ram_wdata),
        .ram_addr_tag(cache_ram_addr),
        .ram_wr(cache_ram_wr),
        .ram_rd(cache_ram_rd),
        .ram_rdata(cache_ram_rdata),
        .ram_ack(cache_ack)
    );
    
endmodule

