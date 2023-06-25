// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jun 25 13:03:10 2023
// Host        : WiNdOwS-10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_1_sim_netlist.v
// Design      : fifo_generator_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_1,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [8:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [8:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [8:0]din;
  wire [8:0]dout;
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
  (* C_DIN_WIDTH = "9" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "9" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 83120)
`pragma protect data_block
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
jfW++NdvBjCXFsrnO2c=
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
