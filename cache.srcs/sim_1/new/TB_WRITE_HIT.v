`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 14:16:18
// Design Name: 
// Module Name: TB_READ
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


module TB_WRITE_HIT();

    localparam ADDR_SIZE = 16;
    localparam ADDR_TAG_SIZE = 12;
    localparam CPU_DATA_SIZE = 32;
    localparam BVAL_SIZE = 4;
    localparam RAM_DATA_SIZE = 128;
    localparam RAM_BUS_SIZE = 8;
    localparam CACHE_DATA_SIZE = RAM_DATA_SIZE;

    reg cpu_reset = 0;
    reg cache_reset = 0;
    reg ram_reset = 0;
    reg cpu_clk = 0;
    reg cache_clk= 0;
    reg ram_clk= 0;
    
    // Inputs-outputs of CPU
    reg [ADDR_SIZE-1:0] cpu_addr = 0;
    reg cpu_wr = 0;
    reg cpu_rd = 0;
    reg [CPU_DATA_SIZE-1:0] cpu_wdata = 0;
    reg [BVAL_SIZE-1:0] cpu_bval = 0;
    
    wire [CPU_DATA_SIZE-1:0] cpu_rdata;
    wire cpu_ack;
    
    // Inputs-outputs of RAM
    reg [RAM_BUS_SIZE-1:0] ram_rdata = 0;
    reg ram_ack = 0;
    
    wire [RAM_BUS_SIZE-1:0] ram_wdata;
    wire [ADDR_TAG_SIZE-1:0] ram_addr;
    wire ram_avalid;
    wire ram_rnw;

    cache_memory cache_memory(
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
    
    always #2 cache_clk <= ~cache_clk;
    always #13 ram_clk <= ~ram_clk;
    always #7 cpu_clk <= ~cpu_clk;
    
    integer i;
    initial #30 begin
     // RESET 
        
        // RESET 
        
        cache_reset = 1;
        ram_reset = 1;
        cpu_reset = 1;
        
        @(negedge ram_clk);
        @(negedge cache_clk);
        @(negedge cpu_clk);
            
        cache_reset = 0;
        ram_reset = 0;
        cpu_reset = 0;
        
        for(i=0; i<2; i=i+1)
            @(negedge ram_clk);
            
            
        // Read - miss
        @(negedge cpu_clk);
        cpu_rd = 1;
        cpu_addr = 16'b0000_0000_1101_0100;
        @(negedge cpu_clk);
        cpu_rd = 0;
        cpu_addr = 16'b0;
        
        for(i=0; i<9; i=i+1)
            @(negedge ram_clk);
        ram_rdata = 8'b1111_0000;
        ram_ack = 1;
        for(i=0; i<16; i=i+1)
            @(negedge ram_clk);
        ram_ack = 0;
        
        while (cpu_ack == 0)
           @(negedge cpu_clk);
           
        for(i=0; i<5; i=i+1)
            @(negedge ram_clk);
            
            
        // Write - hit
        @(negedge cpu_clk);
        cpu_wr = 1;
        cpu_addr = 16'b0000_0000_1101_0100;
        cpu_wdata = {4{8'b10101010}};
        cpu_bval = 4'b0011;
        @(negedge cpu_clk);
        cpu_wr = 0;
        cpu_addr = 16'b0;
        cpu_wdata = 32'b0;
        cpu_bval = 4'b0;

        
        while (cpu_ack == 0)
           @(negedge cpu_clk);
           
        for(i=0; i<5; i=i+1)
            @(negedge ram_clk);
            
        @(negedge cpu_clk);    
        cpu_rd = 1;
        cpu_addr = 16'b0000_0000_1101_0100;
        @(negedge cpu_clk);
        cpu_rd = 0;
        cpu_addr = 16'b0;
        while (cpu_ack == 0)
           @(negedge cpu_clk);
        @(negedge cpu_clk);
        @(negedge cpu_clk);
        
        $finish;
     end
endmodule
