// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Jun 24 16:36:51 2023
// Host        : WiNdOwS-10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_generator_1 -prefix
//               fifo_generator_1_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module fifo_generator_1
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
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
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
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
  fifo_generator_1_fifo_generator_v13_2_7 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_1_xpm_cdc_gray
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
module fifo_generator_1_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 82256)
`pragma protect data_block
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
6kb7W9I=
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
