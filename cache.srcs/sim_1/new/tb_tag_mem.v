`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2023 21:50:31
// Design Name: 
// Module Name: tb_tag_mem
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


module tb_tag_mem();
    localparam ATAG = 12;
    localparam LTAG = 13;
    localparam LINE_SIZE = 5;
    
    reg clk = 'b0;
    reg reset = 'b1;
    reg [ATAG-1:0] addr = 12'b0000_0000_1111;
    reg wr = 'b0;
    reg md = 'b0;
    reg lfu = 'b0;
    
    wire [LTAG-1:0] LTag;
    wire [LINE_SIZE-1:0] Line;
    wire Hit;
    
    tag_mem tag_mem (
        .CLK(clk),
        .areset(reset),
        .addr_tag(addr),
        .sig_wr(wr),
        .sig_lfu(lfu),
        .sig_md(md),
        .Line(Line),
        .LTag(LTag),
        .Hit(Hit)
    );
    
    always #10 clk <= ~clk;

    initial #30 begin
        // reset
        reset = 1;
        @(negedge clk);
        lfu = 1;
        
        // wrT
        // tag: 000000000001
        reset = 0;
        addr = 12'b0000_0000_0001;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_0010;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_0011;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_0100;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_0101;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_0110;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_0111;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_1000;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_1001;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_1010;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_1011;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_1100;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_1101;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_1110;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_1111;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_0000;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_0001;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_0010;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_0011;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_0100;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_0101;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_0110;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_0111;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_1000;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_1001;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_1010;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_1011;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_1100;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_1101;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_1110;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0001_1111;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0010_0000;
        wr = 1;
        @(negedge clk);
        @(negedge clk);
        
        
        addr = 12'b0000_0000_0011;
        wr = 0;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b0000_0000_0001;
        lfu = 1;
        @(negedge clk);
        @(negedge clk);
        
        addr = 12'b1111_0000_0001;
        lfu = 0;
        wr = 1;
        @(negedge clk);
        
        wr = 0;
        @(negedge clk);
        
        

        
        $display("seresr");
        
        $finish;
    end 
  

endmodule