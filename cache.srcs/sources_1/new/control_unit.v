`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2023 13:56:47
// Design Name: 
// Module Name: control_unit
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


module control_unit(
    CLK,
    areset,
    cpu_wr,
    cpu_rd,
    hit,
    lm,
    ram_ack,
    cpu_ack,
    lfu,
    m,
    wrT,
    wr,
    wsel,
    tsel,
    ram_wr,
    ram_rd
);
    input CLK;
    input areset;
    input cpu_wr;
    input cpu_rd;
    input hit;
    input lm;
    input ram_ack;
    
    output reg cpu_ack;
    output reg lfu;
    output reg m;
    output reg wrT;
    output reg wr;
    output reg wsel;
    output reg tsel;
    output reg ram_wr;
    output reg ram_rd;
    
    reg [5:0] state;
    
    localparam DEFAULT = 0;
    localparam RD_HIT = 1;
    localparam WR_HIT = 2;
    localparam RD_RAM = 3;
    localparam RD_RAM_RD = 4;
    localparam RD_RAM_DONE = 5;
    localparam RD_RAM_WR = 6;
    localparam RD_RAM_WR2 = 7;
    localparam WR_RAM = 8;
    localparam RD_RAM_DONE_WR = 9;

    always @(posedge CLK or areset) begin
        if(areset) begin
            state <= DEFAULT;
        end else begin
            if (state == DEFAULT) begin
                if (hit === 1 & cpu_rd === 1) state <= RD_HIT;
                else if (hit === 1 & cpu_wr === 1) state <= WR_HIT; 
                else if (hit !== 1 & lm !== 1) state <= RD_RAM;
                else if (hit !== 1 & lm === 1) state <= WR_RAM;
                else state <= DEFAULT;
            end else if (state == RD_RAM) begin
                if (ram_ack === 1) begin
                    if (cpu_rd) state <= RD_RAM_RD;
                    else if (cpu_wr) state <= RD_RAM_WR;
                end
            end else if (state == RD_RAM_RD) begin
                state <= RD_RAM_DONE;
            end else if (state == WR_RAM) begin
                if (ram_ack === 1) state <= RD_RAM;
            end else if (state == RD_RAM_WR) begin
                state <= RD_RAM_DONE_WR;
            end else state <= DEFAULT;
        end 
    end  
    
    always @(*) begin
        case (state)
            DEFAULT:        {cpu_ack, lfu, m, wrT, wr, wsel, tsel, ram_wr, ram_rd} <= 
                              'b0______0___0___0___0____0_____0_______0_______0;
            RD_HIT:         {cpu_ack, lfu, m, wrT, wr, wsel, tsel, ram_wr, ram_rd} <= 
                              'b1______1___0___0___0____0_____0_______0_______0;
            WR_HIT:         {cpu_ack, lfu, m, wrT, wr, wsel, tsel, ram_wr, ram_rd} <= 
                              'b1______1___1___0___1____0_____0_______0_______0;
            RD_RAM:         {cpu_ack, lfu, m, wrT, wr, wsel, tsel, ram_wr, ram_rd} <= 
                              'b0______0___0___0___0____0_____0_______0_______1;
            RD_RAM_RD:      {cpu_ack, lfu, m, wrT, wr, wsel, tsel, ram_wr, ram_rd} <= 
                              'b0______0___0___1___1____1_____0_______0_______0;
            RD_RAM_DONE:    {cpu_ack, lfu, m, wrT, wr, wsel, tsel, ram_wr, ram_rd} <= 
                              'b1______0___0___0___0____0_____0_______0_______0;
            RD_RAM_DONE_WR: {cpu_ack, lfu, m, wrT, wr, wsel, tsel, ram_wr, ram_rd} <= 
                              'b1______0___1___0___0____0_____0_______0_______0;               
            RD_RAM_WR:      {cpu_ack, lfu, m, wrT, wr, wsel, tsel, ram_wr, ram_rd} <= 
                              'b0______0___1___1___1____1_____0_______0_______0;                              
            WR_RAM:         {cpu_ack, lfu, m, wrT, wr, wsel, tsel, ram_wr, ram_rd} <= 
                              'b0______0___0___0___0____0_____1_______1_______0;
        endcase
    end
endmodule