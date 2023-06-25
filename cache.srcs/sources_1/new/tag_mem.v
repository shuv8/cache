`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2023 20:44:04
// Design Name: 
// Module Name: tag_mem
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


module or_32(in, out);
    localparam SIZE = 32;
    input wire [SIZE-1:0] in;
    output wire out;
    
    assign out = |in;
endmodule

module encoder_32(in, out);
    localparam SIZE = 5;
    input wire [(2**SIZE)-1:0] in;
    output wire [SIZE-1:0] out;
    
    assign out = (in[0] == 1)?0:
                 (in[1] == 1)?1:
                 (in[2] == 1)?2:
                 (in[3] == 1)?3:
                 (in[4] == 1)?4:
                 (in[5] == 1)?5:
                 (in[6] == 1)?6:
                 (in[7] == 1)?7:
                 (in[8] == 1)?8:
                 (in[9] == 1)?9:
                 (in[10] == 1)?10:
                 (in[11] == 1)?11:
                 (in[12] == 1)?12:
                 (in[13] == 1)?13:
                 (in[14] == 1)?14:
                 (in[15] == 1)?15:
                 (in[16] == 1)?16:
                 (in[17] == 1)?17:
                 (in[18] == 1)?18:
                 (in[19] == 1)?19:
                 (in[20] == 1)?20:
                 (in[21] == 1)?21:
                 (in[22] == 1)?22:
                 (in[23] == 1)?23:
                 (in[24] == 1)?24:
                 (in[25] == 1)?25:
                 (in[26] == 1)?26:
                 (in[27] == 1)?27:
                 (in[28] == 1)?28:
                 (in[29] == 1)?29:
                 (in[30] == 1)?30:
                 (in[31] == 1)?31:5'bx;
endmodule

module hit_ks(in, out_hit, out_num);
    localparam SIZE = 32;
    input wire [SIZE-1:0] in;
    input wire out_hit;
    output wire [4:0] out_num;
    
    or_32 or_32 (in, out_hit);
    encoder_32 enc_32 (in, out_num);
endmodule

module lfu_ks(Lines_LFU, LFU);
    localparam LFU_SIZE = 6;
    localparam LINES_NUMBER = 32;
    
    input wire [LFU_SIZE*LINES_NUMBER-1:0] Lines_LFU;
    output reg [LINES_NUMBER-1:0] LFU;
    
    integer i;
    reg [LFU_SIZE-1:0] min_value;
    reg [4:0] min_num;
    reg [LINES_NUMBER-1:0] min_num_bit;
    
    always @(*) begin
        min_value = Lines_LFU[LFU_SIZE-1:0];
        min_num = 0;
        min_num_bit = 32'b0;
        for (i = 0; i < LINES_NUMBER; i = i + 1) begin
            if (Lines_LFU[LFU_SIZE*i +: LFU_SIZE] < min_value) begin
                min_value = Lines_LFU[LFU_SIZE*i +: LFU_SIZE];
                min_num = i;
            end
        end
        min_num_bit[min_num] = 1;
        assign LFU = min_num_bit;
    end
endmodule

module ltag_ks(tag_in, num_in, out);
    localparam TAG_SIZE = 13;
    localparam NUM_SIZE = 5;
    localparam TAG_NUM = 2**NUM_SIZE;
    
    input wire [TAG_SIZE*TAG_NUM-1:0] tag_in;
    input wire [NUM_SIZE-1:0] num_in;
    output wire [TAG_SIZE-1:0] out;
    
    assign out = tag_in[TAG_SIZE*num_in +: TAG_SIZE];
endmodule

module line_ks(in_lfu_num, in_hit_num, in_hit, out);
    localparam SIZE = 5;
    
    input wire [SIZE-1:0] in_lfu_num;
    input wire [SIZE-1:0] in_hit_num;
    input wire in_hit;
    output wire [SIZE-1:0] out;
    
    assign out = (in_hit === 0) ? in_lfu_num : (in_hit === 1) ? in_hit_num : 5'bx;
endmodule

module tag_mem_line(
    CLK,
    areset,
    addr_tag,
    lfu_ce,
    lfu_s,
    wr,
    lfu,
    md,
    Tag,
    Hit,
    lfu_of
);

    localparam ADDR_TAG_SIZE = 12;
    localparam TAG_SIZE = 20;
    localparam TAG_OUT_SIZE = 19;
    
    input wire CLK;
    input wire areset;
    input wire [ADDR_TAG_SIZE-1:0] addr_tag;
    input wire lfu_ce;
    input wire lfu_s;
    input wire wr;
    input wire lfu;
    input wire md;
    
    output wire [TAG_OUT_SIZE-1:0] Tag;
    output wire Hit;
    output wire lfu_of;
    
    reg [TAG_SIZE-1:0] tag_data;
    
    assign TAG = tag_data[TAG_SIZE-1:8];
    assign VALID = tag_data[7];
    assign MODIFIED = tag_data[6];
    assign LFU = tag_data[5:0];
    
    assign Hit = tag_data[7] && (addr_tag === tag_data[TAG_SIZE-1:8]);
    assign lfu_of = (tag_data[5:0] === 6'b111111);
    assign Tag = {tag_data[TAG_SIZE-1:8], tag_data[6], tag_data[5:0]};
    
    always @(posedge CLK | areset) begin
        if (areset) tag_data[7:0] = 8'b0;
        if (wr && lfu_ce) tag_data = {addr_tag, 1'b1, 1'b0, 6'b000001};
        if (lfu && Hit) tag_data[5:0] = tag_data[5:0] + 1;
        if (lfu_s) tag_data[5:0] = tag_data[5:0] >> 1;
        if (md && Hit) tag_data[6] = 1'b1;
    end
endmodule

module tag_mem(
    CLK,
    areset,
    addr_tag,
    sig_wr,
    sig_lfu,
    sig_md,
    Line,
    LTag,
    Hit
);

    localparam ADDR_TAG_SIZE = 12;
    localparam LTAG_SIZE = ADDR_TAG_SIZE + 1;
    localparam LFU_SIZE = 6;
    localparam TAG_SIZE = LTAG_SIZE + LFU_SIZE;
    localparam MEM_SIZE = 5;

    input wire CLK;
    input wire areset;
    input wire [ADDR_TAG_SIZE-1:0] addr_tag;
    input wire sig_wr;
    input wire sig_lfu;
    input wire sig_md;

    output wire [MEM_SIZE-1:0] Line;
    output wire [LTAG_SIZE-1:0] LTag;
    output wire Hit;
    
    // Outputs of Line
    wire [(2**MEM_SIZE)*LTAG_SIZE-1:0] Lines_LTag;
    wire [(2**MEM_SIZE)*LFU_SIZE-1:0] Lines_LFU;
    wire [2**MEM_SIZE-1:0] Lines_Hit;
    wire [2**MEM_SIZE-1:0] Lines_lfu_of;
    
    wire [2**MEM_SIZE-1:0] LFU;
    wire LFU_OF;
    wire [MEM_SIZE-1:0] LFU_NUM;
    
    wire [4:0] HIT_NUM;
    
    genvar i;
    generate
        for (i = 0; i < 2**MEM_SIZE; i = i + 1) begin
            tag_mem_line line(
                .CLK(CLK),
                .areset(areset),
                .addr_tag(addr_tag),
                .lfu_ce(LFU[i]),
                .lfu_s(LFU_OF),
                .wr(sig_wr),
                .lfu(sig_lfu),
                .md(sig_md),
                .Tag({Lines_LTag[LTAG_SIZE*i +: LTAG_SIZE], Lines_LFU[LFU_SIZE*i +: LFU_SIZE]}),
                .Hit(Lines_Hit[i]),
                .lfu_of(Lines_lfu_of[i])
            );
        end
    endgenerate
    
    or_32 lfu_or (Lines_lfu_of, LFU_OF);
    hit_ks hit_ks (Lines_Hit, Hit, HIT_NUM);
    encoder_32 lfu_num (LFU, LFU_NUM);
    line_ks line_ks (LFU_NUM, HIT_NUM, Hit, Line);
    lfu_ks lfu_ks (Lines_LFU, LFU);
    ltag_ks ltag_ks (Lines_LTag, LFU_NUM, LTag);
    
endmodule