`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.04.2023 22:42:53
// Design Name: 
// Module Name: tb_cache
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


module tb_cache();
    localparam ADDR_SIZE = 16;
    localparam LTAG = 13;
    localparam LINE_SIZE = 5;
    localparam CPU_DATA_SIZE = 32;
    localparam RAM_DATA_SIZE = 128;
    
    //inputs of cache
    reg clk = 'b0;
    reg reset = 'b1;
    reg [ADDR_SIZE-1:0] addr = 12'b0000_0000_0001_0100;
    reg [CPU_DATA_SIZE-1:0] w_data;
    reg [3:0] b_val;
    reg cpu_wr = 'b0;
    reg cpu_rd = 'b0;   
    reg ram_ack = 'b0;
    reg [RAM_DATA_SIZE-1:0] ram_rdata;
   
    //outputs of cache
    wire cpu_ack;
    wire ram_wr;
    wire ram_rd;
    wire [CPU_DATA_SIZE-1:0] r_data;
    wire [RAM_DATA_SIZE-1:0] ram_wdata;
    wire [11:0] ram_addr_tag;
    
    cache cache (
        .CLK(clk),
        .areset(reset),
        .addr(addr),
        .cpu_wr(cpu_wr),
        .cpu_rd(cpu_rd),
        .w_data(w_data),
        .b_val(b_val),
        .r_data(r_data),
        .cpu_ack(cpu_ack),
        .ram_wdata(ram_wdata),
        .ram_addr_tag(ram_addr_tag),
        .ram_wr(ram_wr),
        .ram_rd(ram_rd),
        .ram_rdata(ram_rdata),
        .ram_ack(ram_ack)
    );
    
    always #10 clk <= ~clk;

    initial #30 begin
        // reset
        reset = 1;
        @(negedge clk);
        
        reset = 0;
        cpu_rd = 1;
        ram_rdata = 128'b0;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0;
        @(negedge clk);
        cpu_rd = 0;
        @(negedge clk);
        
        cpu_wr = 1;
        w_data = {32{1'b1}};
        b_val = 4'b0100;
        @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        cpu_rd = 1;
        @(negedge clk);
        
        cpu_rd = 0;
        addr = 12'b0000_0000_0010_1100;
        b_val = 4'b0010;
        cpu_wr = 1;
        ram_rdata = 128'b0;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0;
        @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        
        addr = 12'b0000_0000_0001_0100;
        cpu_rd = 1;
        @(negedge clk);
        cpu_rd = 0;
        @(negedge clk);
        
        $finish;
    end 
  

endmodule
