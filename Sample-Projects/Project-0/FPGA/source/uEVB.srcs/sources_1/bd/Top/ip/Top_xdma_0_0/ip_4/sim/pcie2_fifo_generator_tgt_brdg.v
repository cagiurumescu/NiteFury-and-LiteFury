// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:fifo_generator:13.1
// IP Revision: 4

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module pcie2_fifo_generator_tgt_brdg (
  s_aclk,
  s_aresetn,
  s_axis_tvalid,
  s_axis_tready,
  s_axis_tdata,
  s_axis_tkeep,
  s_axis_tlast,
  s_axis_tuser,
  m_axis_tvalid,
  m_axis_tready,
  m_axis_tdata,
  m_axis_tkeep,
  m_axis_tlast,
  m_axis_tuser,
  axis_prog_full
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME slave_aclk, ASSOCIATED_BUSIF S_AXIS:S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, PHASE 0.000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 slave_aclk CLK" *)
input wire s_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME slave_aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 slave_aresetn RST" *)
input wire s_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
input wire s_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *)
output wire s_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
input wire [63 : 0] s_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *)
input wire [7 : 0] s_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *)
input wire s_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 22, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *)
input wire [21 : 0] s_axis_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *)
input wire m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
output wire [63 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *)
output wire [7 : 0] m_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *)
output wire m_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 22, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *)
output wire [21 : 0] m_axis_tuser;
output wire axis_prog_full;

  fifo_generator_v13_1_4 #(
    .C_COMMON_CLOCK(1),
    .C_SELECT_XPM(0),
    .C_COUNT_TYPE(0),
    .C_DATA_COUNT_WIDTH(10),
    .C_DEFAULT_VALUE("BlankString"),
    .C_DIN_WIDTH(18),
    .C_DOUT_RST_VAL("0"),
    .C_DOUT_WIDTH(18),
    .C_ENABLE_RLOCS(0),
    .C_FAMILY("artix7"),
    .C_FULL_FLAGS_RST_VAL(1),
    .C_HAS_ALMOST_EMPTY(0),
    .C_HAS_ALMOST_FULL(0),
    .C_HAS_BACKUP(0),
    .C_HAS_DATA_COUNT(0),
    .C_HAS_INT_CLK(0),
    .C_HAS_MEMINIT_FILE(0),
    .C_HAS_OVERFLOW(0),
    .C_HAS_RD_DATA_COUNT(0),
    .C_HAS_RD_RST(0),
    .C_HAS_RST(1),
    .C_HAS_SRST(0),
    .C_HAS_UNDERFLOW(0),
    .C_HAS_VALID(0),
    .C_HAS_WR_ACK(0),
    .C_HAS_WR_DATA_COUNT(0),
    .C_HAS_WR_RST(0),
    .C_IMPLEMENTATION_TYPE(0),
    .C_INIT_WR_PNTR_VAL(0),
    .C_MEMORY_TYPE(1),
    .C_MIF_FILE_NAME("BlankString"),
    .C_OPTIMIZATION_MODE(0),
    .C_OVERFLOW_LOW(0),
    .C_PRELOAD_LATENCY(1),
    .C_PRELOAD_REGS(0),
    .C_PRIM_FIFO_TYPE("4kx4"),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL(2),
    .C_PROG_EMPTY_THRESH_NEGATE_VAL(3),
    .C_PROG_EMPTY_TYPE(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL(1022),
    .C_PROG_FULL_THRESH_NEGATE_VAL(1021),
    .C_PROG_FULL_TYPE(0),
    .C_RD_DATA_COUNT_WIDTH(10),
    .C_RD_DEPTH(1024),
    .C_RD_FREQ(1),
    .C_RD_PNTR_WIDTH(10),
    .C_UNDERFLOW_LOW(0),
    .C_USE_DOUT_RST(1),
    .C_USE_ECC(0),
    .C_USE_EMBEDDED_REG(0),
    .C_USE_PIPELINE_REG(0),
    .C_POWER_SAVING_MODE(0),
    .C_USE_FIFO16_FLAGS(0),
    .C_USE_FWFT_DATA_COUNT(0),
    .C_VALID_LOW(0),
    .C_WR_ACK_LOW(0),
    .C_WR_DATA_COUNT_WIDTH(10),
    .C_WR_DEPTH(1024),
    .C_WR_FREQ(1),
    .C_WR_PNTR_WIDTH(10),
    .C_WR_RESPONSE_LATENCY(1),
    .C_MSGON_VAL(1),
    .C_ENABLE_RST_SYNC(1),
    .C_EN_SAFETY_CKT(0),
    .C_ERROR_INJECTION_TYPE(0),
    .C_SYNCHRONIZER_STAGE(2),
    .C_INTERFACE_TYPE(1),
    .C_AXI_TYPE(1),
    .C_HAS_AXI_WR_CHANNEL(1),
    .C_HAS_AXI_RD_CHANNEL(1),
    .C_HAS_SLAVE_CE(0),
    .C_HAS_MASTER_CE(0),
    .C_ADD_NGC_CONSTRAINT(0),
    .C_USE_COMMON_OVERFLOW(0),
    .C_USE_COMMON_UNDERFLOW(0),
    .C_USE_DEFAULT_SETTINGS(0),
    .C_AXI_ID_WIDTH(1),
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_DATA_WIDTH(64),
    .C_AXI_LEN_WIDTH(8),
    .C_AXI_LOCK_WIDTH(1),
    .C_HAS_AXI_ID(0),
    .C_HAS_AXI_AWUSER(0),
    .C_HAS_AXI_WUSER(0),
    .C_HAS_AXI_BUSER(0),
    .C_HAS_AXI_ARUSER(0),
    .C_HAS_AXI_RUSER(0),
    .C_AXI_ARUSER_WIDTH(1),
    .C_AXI_AWUSER_WIDTH(1),
    .C_AXI_WUSER_WIDTH(1),
    .C_AXI_BUSER_WIDTH(1),
    .C_AXI_RUSER_WIDTH(1),
    .C_HAS_AXIS_TDATA(1),
    .C_HAS_AXIS_TID(0),
    .C_HAS_AXIS_TDEST(0),
    .C_HAS_AXIS_TUSER(1),
    .C_HAS_AXIS_TREADY(1),
    .C_HAS_AXIS_TLAST(1),
    .C_HAS_AXIS_TSTRB(0),
    .C_HAS_AXIS_TKEEP(1),
    .C_AXIS_TDATA_WIDTH(64),
    .C_AXIS_TID_WIDTH(1),
    .C_AXIS_TDEST_WIDTH(1),
    .C_AXIS_TUSER_WIDTH(22),
    .C_AXIS_TSTRB_WIDTH(8),
    .C_AXIS_TKEEP_WIDTH(8),
    .C_WACH_TYPE(0),
    .C_WDCH_TYPE(0),
    .C_WRCH_TYPE(0),
    .C_RACH_TYPE(0),
    .C_RDCH_TYPE(0),
    .C_AXIS_TYPE(0),
    .C_IMPLEMENTATION_TYPE_WACH(2),
    .C_IMPLEMENTATION_TYPE_WDCH(1),
    .C_IMPLEMENTATION_TYPE_WRCH(2),
    .C_IMPLEMENTATION_TYPE_RACH(2),
    .C_IMPLEMENTATION_TYPE_RDCH(1),
    .C_IMPLEMENTATION_TYPE_AXIS(2),
    .C_APPLICATION_TYPE_WACH(0),
    .C_APPLICATION_TYPE_WDCH(0),
    .C_APPLICATION_TYPE_WRCH(0),
    .C_APPLICATION_TYPE_RACH(0),
    .C_APPLICATION_TYPE_RDCH(0),
    .C_APPLICATION_TYPE_AXIS(0),
    .C_PRIM_FIFO_TYPE_WACH("512x36"),
    .C_PRIM_FIFO_TYPE_WDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_WRCH("512x36"),
    .C_PRIM_FIFO_TYPE_RACH("512x36"),
    .C_PRIM_FIFO_TYPE_RDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_AXIS("512x72"),
    .C_USE_ECC_WACH(0),
    .C_USE_ECC_WDCH(0),
    .C_USE_ECC_WRCH(0),
    .C_USE_ECC_RACH(0),
    .C_USE_ECC_RDCH(0),
    .C_USE_ECC_AXIS(0),
    .C_ERROR_INJECTION_TYPE_WACH(0),
    .C_ERROR_INJECTION_TYPE_WDCH(0),
    .C_ERROR_INJECTION_TYPE_WRCH(0),
    .C_ERROR_INJECTION_TYPE_RACH(0),
    .C_ERROR_INJECTION_TYPE_RDCH(0),
    .C_ERROR_INJECTION_TYPE_AXIS(0),
    .C_DIN_WIDTH_WACH(32),
    .C_DIN_WIDTH_WDCH(64),
    .C_DIN_WIDTH_WRCH(2),
    .C_DIN_WIDTH_RACH(32),
    .C_DIN_WIDTH_RDCH(64),
    .C_DIN_WIDTH_AXIS(95),
    .C_WR_DEPTH_WACH(16),
    .C_WR_DEPTH_WDCH(1024),
    .C_WR_DEPTH_WRCH(16),
    .C_WR_DEPTH_RACH(16),
    .C_WR_DEPTH_RDCH(1024),
    .C_WR_DEPTH_AXIS(16),
    .C_WR_PNTR_WIDTH_WACH(4),
    .C_WR_PNTR_WIDTH_WDCH(10),
    .C_WR_PNTR_WIDTH_WRCH(4),
    .C_WR_PNTR_WIDTH_RACH(4),
    .C_WR_PNTR_WIDTH_RDCH(10),
    .C_WR_PNTR_WIDTH_AXIS(4),
    .C_HAS_DATA_COUNTS_WACH(0),
    .C_HAS_DATA_COUNTS_WDCH(0),
    .C_HAS_DATA_COUNTS_WRCH(0),
    .C_HAS_DATA_COUNTS_RACH(0),
    .C_HAS_DATA_COUNTS_RDCH(0),
    .C_HAS_DATA_COUNTS_AXIS(0),
    .C_HAS_PROG_FLAGS_WACH(0),
    .C_HAS_PROG_FLAGS_WDCH(0),
    .C_HAS_PROG_FLAGS_WRCH(0),
    .C_HAS_PROG_FLAGS_RACH(0),
    .C_HAS_PROG_FLAGS_RDCH(0),
    .C_HAS_PROG_FLAGS_AXIS(0),
    .C_PROG_FULL_TYPE_WACH(0),
    .C_PROG_FULL_TYPE_WDCH(0),
    .C_PROG_FULL_TYPE_WRCH(0),
    .C_PROG_FULL_TYPE_RACH(0),
    .C_PROG_FULL_TYPE_RDCH(0),
    .C_PROG_FULL_TYPE_AXIS(1),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WACH(15),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WRCH(15),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RACH(15),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_AXIS(9),
    .C_PROG_EMPTY_TYPE_WACH(0),
    .C_PROG_EMPTY_TYPE_WDCH(0),
    .C_PROG_EMPTY_TYPE_WRCH(0),
    .C_PROG_EMPTY_TYPE_RACH(0),
    .C_PROG_EMPTY_TYPE_RDCH(0),
    .C_PROG_EMPTY_TYPE_AXIS(0),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH(14),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH(14),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH(14),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS(14),
    .C_REG_SLICE_MODE_WACH(0),
    .C_REG_SLICE_MODE_WDCH(0),
    .C_REG_SLICE_MODE_WRCH(0),
    .C_REG_SLICE_MODE_RACH(0),
    .C_REG_SLICE_MODE_RDCH(0),
    .C_REG_SLICE_MODE_AXIS(0)
  ) inst (
    .backup(1'D0),
    .backup_marker(1'D0),
    .clk(1'D0),
    .rst(1'D0),
    .srst(1'D0),
    .wr_clk(1'D0),
    .wr_rst(1'D0),
    .rd_clk(1'D0),
    .rd_rst(1'D0),
    .din(18'B0),
    .wr_en(1'D0),
    .rd_en(1'D0),
    .prog_empty_thresh(10'B0),
    .prog_empty_thresh_assert(10'B0),
    .prog_empty_thresh_negate(10'B0),
    .prog_full_thresh(10'B0),
    .prog_full_thresh_assert(10'B0),
    .prog_full_thresh_negate(10'B0),
    .int_clk(1'D0),
    .injectdbiterr(1'D0),
    .injectsbiterr(1'D0),
    .sleep(1'D0),
    .dout(),
    .full(),
    .almost_full(),
    .wr_ack(),
    .overflow(),
    .empty(),
    .almost_empty(),
    .valid(),
    .underflow(),
    .data_count(),
    .rd_data_count(),
    .wr_data_count(),
    .prog_full(),
    .prog_empty(),
    .sbiterr(),
    .dbiterr(),
    .wr_rst_busy(),
    .rd_rst_busy(),
    .m_aclk(1'D0),
    .s_aclk(s_aclk),
    .s_aresetn(s_aresetn),
    .m_aclk_en(1'D0),
    .s_aclk_en(1'D0),
    .s_axi_awid(1'B0),
    .s_axi_awaddr(32'B0),
    .s_axi_awlen(8'B0),
    .s_axi_awsize(3'B0),
    .s_axi_awburst(2'B0),
    .s_axi_awlock(1'B0),
    .s_axi_awcache(4'B0),
    .s_axi_awprot(3'B0),
    .s_axi_awqos(4'B0),
    .s_axi_awregion(4'B0),
    .s_axi_awuser(1'B0),
    .s_axi_awvalid(1'D0),
    .s_axi_awready(),
    .s_axi_wid(1'B0),
    .s_axi_wdata(64'B0),
    .s_axi_wstrb(8'B0),
    .s_axi_wlast(1'D0),
    .s_axi_wuser(1'B0),
    .s_axi_wvalid(1'D0),
    .s_axi_wready(),
    .s_axi_bid(),
    .s_axi_bresp(),
    .s_axi_buser(),
    .s_axi_bvalid(),
    .s_axi_bready(1'D0),
    .m_axi_awid(),
    .m_axi_awaddr(),
    .m_axi_awlen(),
    .m_axi_awsize(),
    .m_axi_awburst(),
    .m_axi_awlock(),
    .m_axi_awcache(),
    .m_axi_awprot(),
    .m_axi_awqos(),
    .m_axi_awregion(),
    .m_axi_awuser(),
    .m_axi_awvalid(),
    .m_axi_awready(1'D0),
    .m_axi_wid(),
    .m_axi_wdata(),
    .m_axi_wstrb(),
    .m_axi_wlast(),
    .m_axi_wuser(),
    .m_axi_wvalid(),
    .m_axi_wready(1'D0),
    .m_axi_bid(1'B0),
    .m_axi_bresp(2'B0),
    .m_axi_buser(1'B0),
    .m_axi_bvalid(1'D0),
    .m_axi_bready(),
    .s_axi_arid(1'B0),
    .s_axi_araddr(32'B0),
    .s_axi_arlen(8'B0),
    .s_axi_arsize(3'B0),
    .s_axi_arburst(2'B0),
    .s_axi_arlock(1'B0),
    .s_axi_arcache(4'B0),
    .s_axi_arprot(3'B0),
    .s_axi_arqos(4'B0),
    .s_axi_arregion(4'B0),
    .s_axi_aruser(1'B0),
    .s_axi_arvalid(1'D0),
    .s_axi_arready(),
    .s_axi_rid(),
    .s_axi_rdata(),
    .s_axi_rresp(),
    .s_axi_rlast(),
    .s_axi_ruser(),
    .s_axi_rvalid(),
    .s_axi_rready(1'D0),
    .m_axi_arid(),
    .m_axi_araddr(),
    .m_axi_arlen(),
    .m_axi_arsize(),
    .m_axi_arburst(),
    .m_axi_arlock(),
    .m_axi_arcache(),
    .m_axi_arprot(),
    .m_axi_arqos(),
    .m_axi_arregion(),
    .m_axi_aruser(),
    .m_axi_arvalid(),
    .m_axi_arready(1'D0),
    .m_axi_rid(1'B0),
    .m_axi_rdata(64'B0),
    .m_axi_rresp(2'B0),
    .m_axi_rlast(1'D0),
    .m_axi_ruser(1'B0),
    .m_axi_rvalid(1'D0),
    .m_axi_rready(),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tstrb(8'B0),
    .s_axis_tkeep(s_axis_tkeep),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tid(1'B0),
    .s_axis_tdest(1'B0),
    .s_axis_tuser(s_axis_tuser),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tstrb(),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tid(),
    .m_axis_tdest(),
    .m_axis_tuser(m_axis_tuser),
    .axi_aw_injectsbiterr(1'D0),
    .axi_aw_injectdbiterr(1'D0),
    .axi_aw_prog_full_thresh(4'B0),
    .axi_aw_prog_empty_thresh(4'B0),
    .axi_aw_data_count(),
    .axi_aw_wr_data_count(),
    .axi_aw_rd_data_count(),
    .axi_aw_sbiterr(),
    .axi_aw_dbiterr(),
    .axi_aw_overflow(),
    .axi_aw_underflow(),
    .axi_aw_prog_full(),
    .axi_aw_prog_empty(),
    .axi_w_injectsbiterr(1'D0),
    .axi_w_injectdbiterr(1'D0),
    .axi_w_prog_full_thresh(10'B0),
    .axi_w_prog_empty_thresh(10'B0),
    .axi_w_data_count(),
    .axi_w_wr_data_count(),
    .axi_w_rd_data_count(),
    .axi_w_sbiterr(),
    .axi_w_dbiterr(),
    .axi_w_overflow(),
    .axi_w_underflow(),
    .axi_w_prog_full(),
    .axi_w_prog_empty(),
    .axi_b_injectsbiterr(1'D0),
    .axi_b_injectdbiterr(1'D0),
    .axi_b_prog_full_thresh(4'B0),
    .axi_b_prog_empty_thresh(4'B0),
    .axi_b_data_count(),
    .axi_b_wr_data_count(),
    .axi_b_rd_data_count(),
    .axi_b_sbiterr(),
    .axi_b_dbiterr(),
    .axi_b_overflow(),
    .axi_b_underflow(),
    .axi_b_prog_full(),
    .axi_b_prog_empty(),
    .axi_ar_injectsbiterr(1'D0),
    .axi_ar_injectdbiterr(1'D0),
    .axi_ar_prog_full_thresh(4'B0),
    .axi_ar_prog_empty_thresh(4'B0),
    .axi_ar_data_count(),
    .axi_ar_wr_data_count(),
    .axi_ar_rd_data_count(),
    .axi_ar_sbiterr(),
    .axi_ar_dbiterr(),
    .axi_ar_overflow(),
    .axi_ar_underflow(),
    .axi_ar_prog_full(),
    .axi_ar_prog_empty(),
    .axi_r_injectsbiterr(1'D0),
    .axi_r_injectdbiterr(1'D0),
    .axi_r_prog_full_thresh(10'B0),
    .axi_r_prog_empty_thresh(10'B0),
    .axi_r_data_count(),
    .axi_r_wr_data_count(),
    .axi_r_rd_data_count(),
    .axi_r_sbiterr(),
    .axi_r_dbiterr(),
    .axi_r_overflow(),
    .axi_r_underflow(),
    .axi_r_prog_full(),
    .axi_r_prog_empty(),
    .axis_injectsbiterr(1'D0),
    .axis_injectdbiterr(1'D0),
    .axis_prog_full_thresh(4'B0),
    .axis_prog_empty_thresh(4'B0),
    .axis_data_count(),
    .axis_wr_data_count(),
    .axis_rd_data_count(),
    .axis_sbiterr(),
    .axis_dbiterr(),
    .axis_overflow(),
    .axis_underflow(),
    .axis_prog_full(axis_prog_full),
    .axis_prog_empty()
  );
endmodule
