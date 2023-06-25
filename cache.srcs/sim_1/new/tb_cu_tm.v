`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2023 20:50:31
// Design Name: 
// Module Name: tb_cu_tm
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


module tb_cu_tm();
    localparam ATAG = 12;
    localparam LTAG = 13;
    localparam LINE_SIZE = 5;
    
    //inputs
    reg clk = 'b0;
    reg reset = 'b1;
    reg [ATAG-1:0] addr = 12'b0000_0000_1111;
    reg cpu_wr = 'b0;
    reg cpu_rd = 'b0;   
    reg ram_ack = 'b0;
    
    //wires between modules
    wire hit;
    wire lfu;
    wire m;
    wire wrT;
    
    //outputs of tag_mem
    wire [LTAG-1:0] LTag;
    wire [LINE_SIZE-1:0] Line;
    
    //outputs of CU
    wire cpu_ack;
    wire wr;
    wire wsel;
    wire tsel;
    wire ram_wr;
    wire ram_rd;
    
    control_unit control_unit (
        .CLK(clk),
        .areset(reset),
        .cpu_wr(cpu_wr),
        .cpu_rd(cpu_rd),
        .hit(hit),
        .lm(LTag[0]),
        .ram_ack(ram_ack),
        .cpu_ack(cpu_ack),
        .lfu(lfu),
        .m(m),
        .wrT(wrT),
        .wr(wr),
        .wsel(wsel),
        .tsel(tsel),
        .ram_wr(ram_wr),
        .ram_rd(ram_rd)
    );
    
    tag_mem tag_mem (
        .CLK(clk),
        .areset(reset),
        .addr_tag(addr),
        .sig_wr(wrT),
        .sig_lfu(lfu),
        .sig_md(m),
        .Line(Line),
        .LTag(LTag),
        .Hit(hit)
    );
    
    always #10 clk <= ~clk;

    initial #30 begin
        // reset
        reset = 1;
        @(negedge clk);
        reset = 0;
        

        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_0001;
        cpu_rd = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0;
        @(negedge clk);
        cpu_rd = 0;
        @(negedge clk);
        
        cpu_wr = 1;
        @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_0010;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_0011;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_0100;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_0101;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_0110;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_0111;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_1000;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_1001;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_1010;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_1011;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_1100;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_1101;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_1110;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0000_1111;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_0000;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_0001;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_0010;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_0011;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_0100;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_0101;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_0110;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_0111;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_1000;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_1001;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_1010;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_1011;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_1100;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_1101;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_1110;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0001_1111;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        // wrT
        // tag: 000000000001
        addr = 12'b1000_0010_0000;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);

        
        
        addr = 12'b1111_0000_1111;
        cpu_rd = 1;
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; 
        @(negedge clk);
        @(negedge clk);
        ram_ack = 1;
        @(negedge clk);
        ram_ack = 0; @(negedge clk);
        @(negedge clk);
        cpu_rd = 0;
        @(negedge clk);
        
        
        addr = 12'b1000_0000_1111;
        cpu_rd = 1;
        @(negedge clk);
        @(negedge clk);
        cpu_rd = 0;
        @(negedge clk);
        
        addr = 12'b1000_0000_1111;
        cpu_wr = 1;
        @(negedge clk);
        @(negedge clk);
        cpu_wr = 0;
        @(negedge clk);
        
//        addr = 12'b0000_0000_0011;
//        cpu_wr = 1;
//        @(negedge clk);
//        @(negedge clk);
//        ram_ack = 1;
//        @(negedge clk);
//        ram_ack = 0; @(negedge clk);
//        @(negedge clk);
//        @(negedge clk);
//        cpu_wr = 0;
//        @(negedge clk);
        
//        addr = 12'b0000_0000_0010;
//        cpu_rd = 1;
//        @(negedge clk);
//        @(negedge clk);
        
//        cpu_rd = 0;
//        @(negedge clk);
        
        
        
        
       
        
        $display("seresr");
        
        $finish;
    end 
  

endmodule