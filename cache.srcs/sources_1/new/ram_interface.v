`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2023 13:04:29
// Design Name: 
// Module Name: ram_interface
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


module ram_interface(
    cache_wdata,
    cache_addr,
    cache_avalid,    
    cache_wr,
    cache_rd,
    cache_rst,
    cache_clk,
    cache_rdata,
    cache_ack,
    ram_rdata,
    ram_ack,
    ram_rst,
    ram_clk,
    ram_wdata,
    ram_addr,
    ram_avalid,
    ram_rnw  
);
    localparam ADDR_TAG_SIZE = 12;
    localparam CACHE_DATA_SIZE = 128;
    localparam RAM_DATA_SIZE = 8;
    
    // Inputs-outputs to cache
    input [CACHE_DATA_SIZE-1:0] cache_wdata;
    input [ADDR_TAG_SIZE-1:0] cache_addr;
    input cache_wr;
    input cache_rd;
    input cache_avalid;
    input cache_rst;
    input cache_clk;
    
    output reg [CACHE_DATA_SIZE-1:0] cache_rdata;
    output reg cache_ack;
    
    // Inputs-outputs to RAM
    input [RAM_DATA_SIZE-1:0] ram_rdata;
    input ram_ack;
    input ram_rst;
    input ram_clk;
    
    output reg [RAM_DATA_SIZE-1:0] ram_wdata;
    output reg [ADDR_TAG_SIZE-1:0] ram_addr;
    output reg ram_avalid;
    output reg ram_rnw;
    
    // States
    reg [3:0] REG_NUM = 0;
    reg [3:0] state = 0;
    
    localparam IDLE = 1;
    localparam ADDR2FIFO = 2;
    localparam WAIT_ACK = 3;
    localparam FIFO2REG = 4;
    
    localparam DATA2REG = 5;
    localparam REG2FIFO = 6;
    
    localparam CLEAR_Q = 7;
    localparam WAIT_DATA = 8;
    localparam ACK_WR = 9;
    localparam ACK_RD = 10;
    
    
    
    // Shift regs
    reg CACHE2RAM_LOAD = 0;
    reg CACHE2RAM_SHIFT = 0;
    reg [CACHE_DATA_SIZE-1:0] SHIFT_REG_CACHE2RAM = 0;
    
    // FIFO cache -> RAM
    reg [RAM_DATA_SIZE + ADDR_TAG_SIZE + 2 - 1:0] cache2ram_input;
    wire [RAM_DATA_SIZE + ADDR_TAG_SIZE + 2 - 1:0] cache2ram_output;
    reg cache2ram_read;
    reg cache2ram_write;
    wire cache2ram_empty;
    wire cache2ram_full;
    wire cache_rnw;
    
    // Shift regs
    always @(posedge cache_clk) begin
        if (CACHE2RAM_LOAD) SHIFT_REG_CACHE2RAM <= cache_wdata;
        else if (CACHE2RAM_SHIFT) SHIFT_REG_CACHE2RAM <= {8'b0, SHIFT_REG_CACHE2RAM[CACHE_DATA_SIZE - 1:RAM_DATA_SIZE]};
    end
    
    
    always @(*) begin
	    CACHE2RAM_SHIFT <= ((state == REG2FIFO) && ~cache2ram_full);
    end
    
    always @(*) begin
	   CACHE2RAM_LOAD <= state == DATA2REG;
    end
    
    assign cache_rnw = (cache_rd==='b1 && cache_wr==='b0)?1:
                       (cache_wr==='b1 && cache_rd==='b0)?0:1'bx;
    
    always @(*) begin
	   cache2ram_input <= {cache_addr, SHIFT_REG_CACHE2RAM[RAM_DATA_SIZE - 1:0], cache_rnw, cache_avalid};
    end
    
    always @(*) begin
        cache2ram_read <= ~cache2ram_empty;
    end
    
    
    fifo_generator_0 #() cache_to_ram_fifo_inst (
        .wr_clk(cache_clk),
        .wr_rst(cache_rst),
        .rd_clk(ram_clk),
        .rd_rst(ram_rst),
        .din(cache2ram_input),
        .wr_en(cache2ram_write),
        .rd_en(cache2ram_read),
        .dout(cache2ram_output),
        .full(cache2ram_full),
        .empty(cache2ram_empty)
    );
    
    always @(*) begin
        ram_addr <= cache2ram_output[RAM_DATA_SIZE + ADDR_TAG_SIZE + 2 - 1 : RAM_DATA_SIZE + 2];
        ram_wdata <= cache2ram_output[RAM_DATA_SIZE + 2 - 1  : 2];
        ram_rnw <= cache2ram_output[1];
        ram_avalid <= cache2ram_output[0];
    end 
    
endmodule
