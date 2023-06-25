// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Jun 24 17:18:29 2023
// Host        : WiNdOwS-10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 81600)
`pragma protect data_block
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
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
