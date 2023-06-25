// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Jun 24 17:18:30 2023
// Host        : WiNdOwS-10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx/Projects/cache/cache.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  input wr_rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  input rd_rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [21:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [21:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [21:0]din;
  wire [21:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [4:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "5" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "22" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "22" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "29" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "28" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_0_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[4:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(rd_en),
        .rd_rst(rd_rst),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(wr_en),
        .wr_rst(wr_rst),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 81456)
`pragma protect data_block
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
0MjP
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
