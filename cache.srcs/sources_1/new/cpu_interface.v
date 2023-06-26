`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2023 15:47:44
// Design Name: 
// Module Name: cpu_interface
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


module cpu_interface(
    cpu_reset,
    cache_reset,
    cpu_addr,
    cpu_wr,
    cpu_rd,
    cpu_wdata,
    cpu_bval,
    cpu_clk,
    cpu_rdata,
    cpu_ack,
    cache_rdata,
    cache_ack,
    cache_clk,
    cache_addr,
    cache_wr,
    cache_rd,
    cache_wdata,
    cache_bval
);

    localparam ADDR_SIZE = 16;
    localparam DATA_SIZE = 32;
    localparam BVAL_SIZE = 4;
    
    input cpu_reset, cache_reset;
    
    // Inputs-outputs of CPU
    input [ADDR_SIZE-1:0] cpu_addr;
    input cpu_wr;
    input cpu_rd;
    input [DATA_SIZE-1:0] cpu_wdata;
    input [BVAL_SIZE-1:0] cpu_bval;
    input cpu_clk;
    
    output reg [DATA_SIZE-1:0] cpu_rdata;
    output reg cpu_ack;
    
    // Inputs-outputs of cache
    input [DATA_SIZE-1:0] cache_rdata;
    input cache_ack;
    input cache_clk;
    
    output reg [ADDR_SIZE-1:0] cache_addr;
    output reg cache_wr;
    output reg cache_rd;
    output reg [DATA_SIZE-1:0] cache_wdata;
    output reg [BVAL_SIZE-1:0] cache_bval;
    
    // Buffer regs
    reg [DATA_SIZE + ADDR_SIZE + BVAL_SIZE + 2 - 1:0] cpu2cache_buf;
    reg [DATA_SIZE + 1 - 1:0] cache2cpu_buf;
    
    // Directions
    reg cpu2cache = 0;
    reg cache2cpu = 0;
    
    always @(posedge cpu_clk) begin
        if (cpu_rd === 1 || cpu_wr === 1) begin
            cpu2cache_buf <= {cpu_addr, cpu_wr, cpu_rd, cpu_wdata, cpu_bval};
            cpu2cache = 1;
        end
    end


    always @(posedge cache_clk) begin
        if (cpu2cache === 1) begin
            cache_addr <= cpu2cache_buf[53:38];
            cache_wr <= cpu2cache_buf[37];
            cache_rd <= cpu2cache_buf[36];
            cache_wdata <= cpu2cache_buf[35:4];
            cache_bval <= cpu2cache_buf[3:0];
            cpu2cache = 0;
        end else if(cache_ack === 1) begin
            cache_rd <= 0;
            cache_wr <= 0;
        end else if (cache_reset) begin
            cache_addr <= 0;
            cache_wr <= 0;
            cache_rd <= 0;
            cache_wdata <= 0;
            cache_bval <= 0;
            cpu2cache = 0;
        end
    end


    always @(posedge cache_clk) begin
        if (cache_ack === 1) begin
            cache2cpu_buf <= {cache_rdata, cache_ack}; 
            cache2cpu = 1;
        end
    end


    always @(posedge cpu_clk) begin
        if (cache2cpu === 1) begin
            cpu_rdata <= cache2cpu_buf[32:1];
            cpu_ack   <= cache2cpu_buf[0];
            cache2cpu = 0;
        end else if (cpu_reset) begin
            cpu_rdata <= 0;
            cpu_ack <= 0;
        end else
            cpu_ack <= 0;
    end

endmodule
