`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2023 13:33:58
// Design Name: 
// Module Name: tb_ram_interface
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


module tb_ram_interface();
    localparam ADDR_TAG_SIZE = 12;
    localparam RAM_DATA_SIZE = 8;
    localparam CACHE_DATA_SIZE = 128;
    
    // Inputs-outputs to cache
    reg [CACHE_DATA_SIZE-1:0] cache_wdata = 128'b0;
    reg [ADDR_TAG_SIZE-1:0] cache_addr = 12'b0;
    reg cache_wr;
    reg cache_rd;
    reg cache_rst;
    reg cache_clk = 'b0;
    
    wire [CACHE_DATA_SIZE-1:0] cache_rdata;
    wire cache_ack;
    
    // Inputs-outputs to RAM
    reg [RAM_DATA_SIZE-1:0] ram_rdata;
    reg ram_ack;
    reg ram_rst;
    reg ram_clk = 'b0;
    
    wire [RAM_DATA_SIZE-1:0] ram_wdata;
    wire [ADDR_TAG_SIZE-1:0] ram_addr;
    wire ram_avalid;
    wire ram_rnw;
    
    ram_interface ram_interface (
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
    
    always #10 cache_clk <= ~cache_clk;
    always #15 ram_clk <= ~ram_clk;
    
    integer i;
    initial #30 begin
     // RESET 
        
        cache_rst = 1;
        ram_rst = 1;
        
        @(negedge ram_clk);
        @(negedge cache_clk);
            
        cache_rst = 0;
        ram_rst = 0;
        
        for(i=0; i<2; i=i+1)
            @(negedge ram_clk);
            
        cache_wr = 1;
        cache_rd = 0;
        cache_addr = 12'b101010101010;
        cache_wdata = {8{16'b0000000011111111}};
        @(negedge cache_clk);
        @(negedge cache_clk);
        cache_wr = 0;
        cache_rd = 0;
        cache_addr = 12'b0;
        cache_wdata = 128'b0;
        for(i=0; i<16; i=i+1)
            @(negedge ram_clk);
            
            
        cache_wr = 0;
        cache_rd = 1;
        cache_addr = 12'b101010101010;
        cache_wdata = 128'b0;
        
        for(i=0; i<16; i=i+1) begin
            ram_ack = 1;
            ram_rdata = 8'b10000001;
            @(negedge ram_clk);
        end
        ram_ack = 0;
        
        
        for(i=0; i<16; i=i+1)
            @(negedge ram_clk);
    end
endmodule
