// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Jun 24 16:36:51 2023
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 83232)
`pragma protect data_block
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
IG6Ju2PES+sjrJXI
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
