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
    reg [4:0] REG_NUM = 0;
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
    reg RAM2CACHE_LOAD = 0;
    reg RAM2CACHE_SHIFT = 0;
    reg [CACHE_DATA_SIZE-1:0] SHIFT_REG_RAM2CACHE = 0;
    
    // FIFO cache -> RAM
    reg [RAM_DATA_SIZE + ADDR_TAG_SIZE + 2 - 1:0] cache2ram_input;
    wire [RAM_DATA_SIZE + ADDR_TAG_SIZE + 2 - 1:0] cache2ram_output;
    reg cache2ram_read;
    reg cache2ram_write;
    wire cache2ram_empty;
    wire cache2ram_full;
    reg cache_rnw;
    reg cache_avalid_reg;
    
    // FIFO RAM -> cache
    wire [RAM_DATA_SIZE-1:0] RAM_RD_DATA;
    reg ram2cache_read;
    wire ram2cache_empty;
    wire ram2cache_full;
    
    // Shift regs
    always @(posedge cache_clk) begin
        if (CACHE2RAM_LOAD) SHIFT_REG_CACHE2RAM <= cache_wdata;
        else if (CACHE2RAM_SHIFT) SHIFT_REG_CACHE2RAM <= {8'b0, SHIFT_REG_CACHE2RAM[CACHE_DATA_SIZE - 1:RAM_DATA_SIZE]};
    end
    
    
    always @(*) begin
	    CACHE2RAM_SHIFT <= ((state == REG2FIFO && REG_NUM <= 15) && ~cache2ram_full);
    end
    
    always @(*) begin
	   CACHE2RAM_LOAD <= state == DATA2REG;
    end
    
    always @(posedge cache_clk) begin
        if (RAM2CACHE_LOAD) 
            SHIFT_REG_RAM2CACHE <= {RAM_RD_DATA, SHIFT_REG_RAM2CACHE[CACHE_DATA_SIZE - 1 : RAM_DATA_SIZE]};
    end

    always @(*) begin
        cache_rdata <= SHIFT_REG_RAM2CACHE;
    end
    
    always @(*) begin
	   cache2ram_input <= {cache_addr, SHIFT_REG_CACHE2RAM[RAM_DATA_SIZE - 1:0], cache_rnw, cache_avalid_reg};
    end
    
    always @(*) begin
        cache2ram_read <= ~cache2ram_empty;
    end
    
    always @(*) begin
	     RAM2CACHE_LOAD <=  (state == FIFO2REG && REG_NUM == 16) || (~ram2cache_empty && (state == FIFO2REG));
    end   
    
    always @(posedge cache_clk) begin
      if(cache_rst) begin
        state <= IDLE;
      end else begin
        case (state)
            IDLE: begin
                REG_NUM <= 0;
                if (cache_wr)
                    state <= DATA2REG; 
                else if (cache_rd)
                    state <= ADDR2FIFO; 
                else state <= IDLE;
             end 
            
            ADDR2FIFO: state <= CLEAR_Q;

            CLEAR_Q: state <= WAIT_DATA;
            
            WAIT_DATA: begin
                    if (~ram2cache_empty) begin
                        state <= FIFO2REG;
                        REG_NUM <= REG_NUM + 1;
                    end
                end
            
            FIFO2REG: begin
                    if (REG_NUM == 16) state <= ACK_RD;
                    if (~ram2cache_empty) REG_NUM <= REG_NUM + 1;
                end
            
            ACK_RD: begin
                    state <= IDLE;
                end
            
            DATA2REG: begin
                    if (~cache2ram_full) begin
                        state <= REG2FIFO;
                        REG_NUM <= REG_NUM + 1;
                    end
                end
            
            REG2FIFO: begin
                    if (REG_NUM == 16) state <= ACK_WR;
                    if (~cache2ram_full) REG_NUM <= REG_NUM + 1;
                end
            
            ACK_WR: begin
                    state <= IDLE;
                end
          
            default: state <= IDLE;
           endcase
       end
    end 
    
    always @(*) begin
	   cache2ram_write <= (CACHE2RAM_SHIFT ||  
       state == ADDR2FIFO || 
       state == CLEAR_Q || 
       state == REG2FIFO );
    end 

    always @(*) begin
        case (state)
            IDLE: begin
                cache_rnw <= cache_rd & ~cache_wr;
                cache_avalid_reg <= cache_rd | cache_wr;
            end
            REG2FIFO: begin
                if (REG_NUM == 2) begin
                    cache_rnw <= 0;
                    cache_avalid_reg <= 0;
                end
            end
            CLEAR_Q: begin
                cache_rnw <= 0;
                cache_avalid_reg <= 0;
            end
        endcase
    end
    
    always @(*) begin
	    ram2cache_read <= ((state == WAIT_DATA  || (state == FIFO2REG && REG_NUM <= 15 )) && ~ram2cache_empty);
    end
    
    always @(*) begin
	   cache_ack <= (state == ACK_RD || state == ACK_WR);
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
    
    fifo_generator_1 #() ram_to_cache_fifo_inst (
        .wr_clk(ram_clk),
        .wr_rst(ram_rst),
        .rd_clk(cache_clk),
        .rd_rst(cache_rst),
        .din(ram_rdata),
        .wr_en(ram_ack),
        .rd_en(ram2cache_read),
        .dout(RAM_RD_DATA),
        .full(ram2cache_full),
        .empty(ram2cache_empty)
    );
    
endmodule
