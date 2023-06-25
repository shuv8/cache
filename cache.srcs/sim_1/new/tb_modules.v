`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2023 22:04:03
// Design Name: 
// Module Name: tb_or
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


module tb_modules();
    localparam CPU_DATA_SIZE = 32;
    localparam DATA_SIZE = 128;
    localparam BVAL_SIZE = 4;
    localparam OFF_SIZE = 4;
    reg [CPU_DATA_SIZE-1:0] cpu_wdata;
    reg [DATA_SIZE-1:0] ram_data, cache_data;
    reg [BVAL_SIZE-1:0] b_val;
    reg [OFF_SIZE-1:0] addr_offset;
    reg wsel;
    
    wire [DATA_SIZE-1:0] wdata;
    
    wdata_ks wdata_ks (cpu_wdata, ram_data, cache_data, addr_offset, b_val, wsel, wdata);
    
    //always #10 clk <= ~clk;
    
    initial #10 begin
        
        cpu_wdata = 32'b11111111_11111111_11111111_11111111;
        ram_data = 128'b0;
        cache_data = {128{1'b1}};
        b_val = 4'b0001;
        addr_offset = 4'b1000;
        wsel = 1;
        #10;
        cpu_wdata = 32'b0;
        wsel = 0;
        #10;
        //@(negedge clk);
        
        $finish;
    end
endmodule