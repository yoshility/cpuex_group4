// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Feb 27 12:18:55 2023
// Host        : LAPTOP-OLI9C9H0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/tansei/Documents/cpu/cpuex_group4/core/cache/ip/fifo_generator_1/fifo_generator_1_sim_netlist.v
// Design      : fifo_generator_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_1,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_generator_1
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [127:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [127:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [127:0]din;
  wire [127:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
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
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "128" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "128" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
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
  (* C_HAS_RST = "0" *) 
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
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x72" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "15" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "14" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
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
  (* C_USE_DOUT_RST = "0" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_1_fifo_generator_v13_2_5 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_1_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_1_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
SFoQ2tXDMrL2nCJbfpmHXuteJlKaWDWl3o9OY1miFvmYb8EDywmDpLUHQktJ/VoW+17fK5WHgFVI
FZV1B91GDQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mxGWDRjEAsKmBqldxevT1RKZvqK7vn0KlTODVXNGlRcGf9zOAmj0Z7Ppu79POBDb8oNQyCY+2q1q
BddzhQfh5WLIVX9BNUMIF6M6IF0elM4GMSLHGeYEwqSaMPC+thuR8FGj1J7z6rH+43gDYhtIeyY+
ZuZUz/Pqg8Lu63Xwe+0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HLwPjQzkuqv5FEDBriEJS2DikBeIHB/bWuVWooHY5ChdoHatcmqCHpSvnGxVzLwObZWHFys2nR9y
P3zxywjtgtOWq/n3cYVa5li6eyiUmGXv2OE8nw1nLnAY1kzBvGd6VwQ45t6l4Hx5+oqpIfuU2KI2
7/Qpj2atiTN3Y+q5He/BMXLIxF9vWuU6XL/+HsxriGAumcZDuESdidlxOztbW1bFhYr1/qWwou2q
wynnRVKYHL41aWycgFdkDoDEFFxv8ft8+F5Ux+J5Hg5XdgRULJc6uUQE/lDG3zOqzPftlODB52zU
d0cm8gFOvSZ2nO8ZB8THnxoAGe33iIZJfMcefA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jlR0iZ4fp9QXiFgaT07DMAK1YFLyBpsOGOOR9j2PWImFEh8oTBt4cvmGo+2z1Umbt9OMQwOhyepO
QIsKLFzUXYUba+SFFLBoCiaww24KICecbUfd3VV5sg2bEJjAdtYTT6mJqyc3vQRvBlONeBFdIGy2
AXqdK7QtXGLsLAIF/z4FG8cfG6nSD6e16gccBC6+kl5MoShdnmebKLyoo6UKFdMbDK88sHvTcD9S
LNCau6RK7FkTZg23FV0tf6cTP9Rray9YEcowm2AAh51Wldo2lGJ2W5iiDatRKH/W1bu7FGWZG+OT
+VZE+Ckiuf4T6cuu+G5IbrtMv6a4U93R0gtxXQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
p/kq+JjPPJbOTWT2SRiPJ99/iH6kkVGEiluRRXpuRN+j+cVPgJD1v4QVjw3zMWLlvTGB7OOqC+JG
Lc62Wiizd/BFfGj2JYkTZMatcOWok7A87HK+vRTjr4nZMApD2jKaneJdU1279KsIEeRfImCQ2uRl
QRNMH3PPdNGYCnOGgNk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kyyI/O29YYc5VBwhz19i7AV7MC75r43hHVKAOTBiGBhRu8zZxCwGGcNFqc2HgHcWC6nq4jCIbIXf
S3FDzPdasegnERlWvoob9/SXM88zKsyeTbUf+DRu5lB8SPROBMaIhnj375C5XLowL17MXZdmB6fV
X5ukCg7cNhCjssKt/bIJibWkfna7hvj4ye+CLWmi3LdEiix8KTwRoBS3ZJrjM4/N6FfZkXerVxs+
txkhdsmG9ga1g/xErhTRilhqrV2WetlpX86qH/64sRGVxrWeEfNoHhMZsqEK0jWDx4WavKt8XY7W
NDzMXLZ2m5Dv5HMiJWgFG+ntPwgiYYtBuwu7Eg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tv6UL1ZWqo3dAIlhN5UTNGzJyqzdHpCqh217JPvIvHiWJgcFh2tw1n7HWnOPcK3VhCt31AGnCEFe
HpTiinXvHna65L2X2HhtNUrsgvZlUuh/oQR273wp5JPFDPD97NQ4ELkGI+w26HTYLgZ70K5rQo87
D4AkQNRuzTRS5G12yb4RU7ZYgmkYLuq1UyqjlxyN62Del4XoqZyivOGw5H+7wlfkNRu98iQwqq12
jthZbH/ue5wxZJUcb7NmEwL+3abpyDNmWs1qORHOFoE3t97/9XMmeSCpM2+KnSKJvsV5VbuoTCOT
964fsEh7ey4IVb4aum095gQjLCqTmDm8DWFmaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oxo3AgNmVWgrXtMKDIThYfXr0YJfyFr7Bsjn2ge/G72mb25MA8Dbkd9ZZPtwqU1poazNnTng5Cx5
s8C1zMNEoo38jNY8zEUBjCCuasJgeMo5xsiha+3ZIBiuHS0KLrjLaPFIQZdsYevb44fg6J5YQLn5
jd1M6YdNMd1VwSezDxtbk9sN8ExPrmtwum/6L1ia9j9UlIzPTEaJ60Xz7tloPsgsbkborO2JLiIk
kIAY2q1b8tuhHzJ5DoXlvIo49wSDj75ncLrkwbAd26huob7aOmX1bS34pJLF17JzqYH0MoPJbHxb
RPdD+qUawXFsMSs2fOLnZrNxeG8L+TyAT0N8tQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CIR/vwxo0IBrPr5+bMp2YuBCQTNBRIIbqgEB18Oewkc8CuHzGCAgPyQUBUKaUG3bBy+KDOPVxBP5
cE/d3QYZAT11fyB1OMMTrjmEIZcr0Vk3nVTAnivoxxxkmdzPjkj0OcGcU9fMArPi3dfTgIsKdtCq
94+mV/70WeprgijzuZFWD7uH+gVioY/+rq/Wc1O6x1n949w8YGgSCTurUvhsobx2bonoC317J0Wm
IX17XRkSBIFgzqA8iC+GV5oCfxIGkihKmXxjIJbMamlOdCOycEkjkh3JYmm7TLNxmI65iffsabR0
t5+iI0l8eJxFhElzWeREqE43cnJYLaKZBUA+DA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 127968)
`pragma protect data_block
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
NgGb
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
