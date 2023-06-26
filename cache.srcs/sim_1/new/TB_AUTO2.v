`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 17:21:05
// Design Name: 
// Module Name: TB_LFU
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


module TB_AUTO2();

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
    
    reg [ADDR_SIZE - 1:0] addr_urandom;
    reg [CACHE_DATA_SIZE - 1:0] Full_read_line;
    reg [CPU_DATA_SIZE-1:0] valid_data [4096 - 1:0];
    reg [CPU_DATA_SIZE-1:0] real_r_data;
    reg [RAM_BUS_SIZE-1:0] ram_rdata_buf, ram_rdata_buf2;
    
    always #2 cache_clk <= ~cache_clk;
    always #13 ram_clk <= ~ram_clk;
    always #7 cpu_clk <= ~cpu_clk;
    
    integer i;
    integer index;
    integer j;
    integer wrong = 0;
    integer test_mem_size;
    integer test_mem_factor;
    integer full_size;
    initial #30 begin
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
        
        for(i=0; i<10; i=i+1)
            @(negedge ram_clk);
            
        for (i=0; i<10; i=i+1)
            @(negedge cache_clk);
        
        test_mem_size = 512;
        test_mem_factor = 64; //1, 2, 4, 32, 128
        full_size = 512 * test_mem_factor;
        
        
        $display("Tests started");
     
        for(j=0; j<10000; j=j+1) begin
                
            $display(">Iteration: %d", j + 1);
            @(posedge cpu_clk);
            addr_urandom = $urandom_range(0, full_size);
            cpu_addr = addr_urandom[ADDR_SIZE - 1:0];
            $display(">Addr: %b", cpu_addr);
            @(negedge cpu_clk);
            cpu_wdata = 0; 
            ram_rdata = 0;
            cpu_bval = 0;
            ram_ack = 0;
            cpu_rd = 1;
            @(negedge cpu_clk);        
            cpu_addr = 16'b0;
            cpu_wdata = 32'b0;
            cpu_bval = 'b0;
            cpu_rd = 0;
            cpu_wr = 0;   
            
            while (ram_rnw == 0 && cpu_ack == 0)
                @(negedge cpu_clk);
                
            if (ram_rnw) begin
                @(negedge ram_clk);
                ram_rdata = addr_urandom[7:0];
                ram_rdata_buf = addr_urandom[ADDR_SIZE - 1:8];
                ram_rdata_buf2 = ram_rdata;
                ram_ack = 1;
                for(i=0; i<16; i=i+1) begin
                    @(negedge ram_clk);
                    $display(">ram_rdata: %b", ram_rdata);
                    ram_rdata_buf2 = ram_rdata;
                    ram_rdata = ram_rdata_buf;
                    ram_rdata_buf = ram_rdata_buf2;
                end
                ram_ack = 0;
                ram_rdata = 0;
                
                while (cpu_ack == 0)
                    @(negedge cpu_clk);
                    
                Full_read_line = {8{addr_urandom[ADDR_SIZE - 1:0]}};
                
                case (addr_urandom[3:2])
                    'b00: real_r_data = Full_read_line[CPU_DATA_SIZE-1:0];
                    'b01: real_r_data = Full_read_line[CPU_DATA_SIZE*2-1:CPU_DATA_SIZE];
                    'b10: real_r_data = Full_read_line[CPU_DATA_SIZE*3-1:CPU_DATA_SIZE*2];
                    'b11: real_r_data = Full_read_line[CPU_DATA_SIZE*4-1:CPU_DATA_SIZE*3];
                endcase  
                
         
                valid_data[addr_urandom[ADDR_SIZE - 1:4]] = real_r_data;
              
                
                    if (cpu_rdata == real_r_data)
                        $display("Result: Valid");
                    else begin
                        $display("Result: !!!!!!!!!!!!!!!!!!!!! INVALID (READ)");
//                        $display(">Current: %b", cpu_rdata);
//                        $display(">Real: %b", real_r_data);
                        wrong = wrong + 1;
                    end
            end else if (~addr_urandom[15]) begin
                //$display("Hit");
 
                if (cpu_rdata == valid_data[addr_urandom[ADDR_SIZE - 1:4]])
                    $display("Result: Valid Hit");
                else begin
//                    $display(">Current: %b", cpu_rdata);
//                    $display(">Real: %b", valid_data[addr_urandom[ADDR_SIZE - 1:4]]);
                    $display("Result: !!!!!!!!!!!!!!!!!!!!! INVALID (HIT)");
                    wrong = wrong + 1;
                end
            end
            

            for(i=0; i<5; i=i+1)
                @(negedge ram_clk);   
                
        end
        $display("Finished");
        $display("Wrong %d", wrong);

        
        $finish;
        
    end

endmodule

