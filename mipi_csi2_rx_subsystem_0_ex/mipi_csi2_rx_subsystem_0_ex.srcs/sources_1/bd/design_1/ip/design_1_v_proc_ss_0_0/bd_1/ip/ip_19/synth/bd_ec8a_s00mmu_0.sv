// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:ip:sc_mmu:1.0
// IP Revision: 8

(* X_CORE_INFO = "sc_mmu_v1_0_8_top,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "bd_ec8a_s00mmu_0,sc_mmu_v1_0_8_top,{}" *)
(* CORE_GENERATION_INFO = "bd_ec8a_s00mmu_0,sc_mmu_v1_0_8_top,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=sc_mmu,x_ipVersion=1.0,x_ipCoreRevision=8,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=spartan7,C_IS_CASCADED=0,C_ENABLE_PIPELINING=0,C_NUM_SEG=3,C_SEG_BASE_ADDR_ARRAY=0x000000000002000000000000000100000000000000000000,C_SEG_SIZE_ARRAY=0x000000100000001000000010,C_SEG_SEP_ROUTE_ARRAY=0x000000000000000100000000000000020000000000000000,C_SEG_SUPPORTS_READ_ARRAY=0b111,C_SEG_SUPPORTS_WR\
ITE_ARRAY=0b111,C_SEG_SECURE_READ_ARRAY=0b000,C_SEG_SECURE_WRITE_ARRAY=0b000,C_NUM_MSC=3,C_MSC_ROUTE_WIDTH=5,C_MSC_ROUTE_ARRAY=0b110011010110011,C_ADDR_WIDTH=18,C_ID_WIDTH=0,C_RDATA_WIDTH=32,C_WDATA_WIDTH=32,C_S_AWUSER_WIDTH=0,C_S_ARUSER_WIDTH=0,C_S_RUSER_WIDTH=0,C_S_WUSER_WIDTH=0,C_S_BUSER_WIDTH=0,C_S_PROTOCOL=2,C_READ_ACCEPTANCE=32,C_WRITE_ACCEPTANCE=32,C_NUM_READ_OUTSTANDING=2,C_NUM_WRITE_OUTSTANDING=2,C_SINGLE_ISSUING=1,C_SUPPORTS_WRAP=0,C_SUPPORTS_NARROW=0,C_SUPPORTS_READ_DECERR=1,C_SUPPORT\
S_WRITE_DECERR=1}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_ec8a_s00mmu_0 (
  aclk,
  aresetn,
  s_axi_awaddr,
  s_axi_awprot,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_bready,
  s_axi_araddr,
  s_axi_arprot,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_rready,
  m_axi_awaddr,
  m_axi_awlen,
  m_axi_awsize,
  m_axi_awburst,
  m_axi_awlock,
  m_axi_awcache,
  m_axi_awprot,
  m_axi_awqos,
  m_axi_awuser,
  m_axi_awvalid,
  m_axi_awready,
  m_axi_wdata,
  m_axi_wstrb,
  m_axi_wlast,
  m_axi_wuser,
  m_axi_wvalid,
  m_axi_wready,
  m_axi_bresp,
  m_axi_buser,
  m_axi_bvalid,
  m_axi_bready,
  m_axi_araddr,
  m_axi_arlen,
  m_axi_arsize,
  m_axi_arburst,
  m_axi_arlock,
  m_axi_arcache,
  m_axi_arprot,
  m_axi_arqos,
  m_axi_aruser,
  m_axi_arvalid,
  m_axi_arready,
  m_axi_rdata,
  m_axi_rresp,
  m_axi_rlast,
  m_axi_ruser,
  m_axi_rvalid,
  m_axi_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 75000000, PHASE 0.0, CLK_DOMAIN /axi_ethernet_0_refclk_clk_out1, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [17 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)
input wire [2 : 0] s_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
input wire [17 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
input wire [2 : 0] s_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 75000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /axi_ethernet_0_refclk_clk_out1, NUM_READ_THREADS 1, NUM_WRIT\
E_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *)
output wire [17 : 0] m_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *)
output wire [7 : 0] m_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *)
output wire [2 : 0] m_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *)
output wire [1 : 0] m_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *)
output wire [0 : 0] m_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *)
output wire [3 : 0] m_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *)
output wire [2 : 0] m_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *)
output wire [3 : 0] m_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWUSER" *)
output wire [1023 : 0] m_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *)
output wire m_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *)
input wire m_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *)
output wire [31 : 0] m_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *)
output wire [3 : 0] m_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *)
output wire m_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WUSER" *)
output wire [1023 : 0] m_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *)
output wire m_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *)
input wire m_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *)
input wire [1 : 0] m_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BUSER" *)
input wire [1023 : 0] m_axi_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *)
input wire m_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *)
output wire m_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *)
output wire [17 : 0] m_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *)
output wire [7 : 0] m_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *)
output wire [2 : 0] m_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *)
output wire [1 : 0] m_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *)
output wire [0 : 0] m_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *)
output wire [3 : 0] m_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *)
output wire [2 : 0] m_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *)
output wire [3 : 0] m_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARUSER" *)
output wire [1023 : 0] m_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *)
output wire m_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *)
input wire m_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *)
input wire [31 : 0] m_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *)
input wire [1 : 0] m_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *)
input wire m_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RUSER" *)
input wire [1023 : 0] m_axi_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *)
input wire m_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 75000000, ID_WIDTH 0, ADDR_WIDTH 18, AWUSER_WIDTH 1024, ARUSER_WIDTH 1024, WUSER_WIDTH 1024, RUSER_WIDTH 1024, BUSER_WIDTH 1024, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /axi_ethernet_0_refclk_clk_out1, NUM_READ_THREAD\
S 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *)
output wire m_axi_rready;

  sc_mmu_v1_0_8_top #(
    .C_FAMILY("spartan7"),
    .C_IS_CASCADED(0),
    .C_ENABLE_PIPELINING(1'D0),
    .C_NUM_SEG(3),
    .C_SEG_BASE_ADDR_ARRAY(192'H000000000002000000000000000100000000000000000000),
    .C_SEG_SIZE_ARRAY(96'H000000100000001000000010),
    .C_SEG_SEP_ROUTE_ARRAY(192'H000000000000000100000000000000020000000000000000),
    .C_SEG_SUPPORTS_READ_ARRAY(3'B111),
    .C_SEG_SUPPORTS_WRITE_ARRAY(3'B111),
    .C_SEG_SECURE_READ_ARRAY(3'B000),
    .C_SEG_SECURE_WRITE_ARRAY(3'B000),
    .C_NUM_MSC(3),
    .C_MSC_ROUTE_WIDTH(5),
    .C_MSC_ROUTE_ARRAY(15'B110011010110011),
    .C_ADDR_WIDTH(18),
    .C_ID_WIDTH(0),
    .C_RDATA_WIDTH(32),
    .C_WDATA_WIDTH(32),
    .C_S_AWUSER_WIDTH(0),
    .C_S_ARUSER_WIDTH(0),
    .C_S_RUSER_WIDTH(0),
    .C_S_WUSER_WIDTH(0),
    .C_S_BUSER_WIDTH(0),
    .C_S_PROTOCOL(2),
    .C_READ_ACCEPTANCE(32),
    .C_WRITE_ACCEPTANCE(32),
    .C_NUM_READ_OUTSTANDING(2),
    .C_NUM_WRITE_OUTSTANDING(2),
    .C_SINGLE_ISSUING(1),
    .C_SUPPORTS_WRAP(0),
    .C_SUPPORTS_NARROW(0),
    .C_SUPPORTS_READ_DECERR(1),
    .C_SUPPORTS_WRITE_DECERR(1)
  ) inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .aclken(1'B1),
    .s_axi_awid(1'H0),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awlen(8'H00),
    .s_axi_awsize(3'H0),
    .s_axi_awburst(2'H1),
    .s_axi_awlock(1'H0),
    .s_axi_awcache(4'H0),
    .s_axi_awprot(s_axi_awprot),
    .s_axi_awqos(4'H0),
    .s_axi_awuser(1'H0),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wid(1'H0),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wlast(1'H1),
    .s_axi_wuser(1'H0),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bid(),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_buser(),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_arid(1'H0),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arlen(8'H00),
    .s_axi_arsize(3'H0),
    .s_axi_arburst(2'H1),
    .s_axi_arlock(1'H0),
    .s_axi_arcache(4'H0),
    .s_axi_arprot(s_axi_arprot),
    .s_axi_arqos(4'H0),
    .s_axi_aruser(1'H0),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rid(),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rlast(),
    .s_axi_ruser(),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .m_axi_awid(),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awlen(m_axi_awlen),
    .m_axi_awsize(m_axi_awsize),
    .m_axi_awburst(m_axi_awburst),
    .m_axi_awlock(m_axi_awlock),
    .m_axi_awcache(m_axi_awcache),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awqos(m_axi_awqos),
    .m_axi_awuser(m_axi_awuser),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awready(m_axi_awready),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wlast(m_axi_wlast),
    .m_axi_wuser(m_axi_wuser),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_wready(m_axi_wready),
    .m_axi_bid(1'H0),
    .m_axi_bresp(m_axi_bresp),
    .m_axi_buser(m_axi_buser),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_bready(m_axi_bready),
    .m_axi_arid(),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arlen(m_axi_arlen),
    .m_axi_arsize(m_axi_arsize),
    .m_axi_arburst(m_axi_arburst),
    .m_axi_arlock(m_axi_arlock),
    .m_axi_arcache(m_axi_arcache),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arqos(m_axi_arqos),
    .m_axi_aruser(m_axi_aruser),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arready(m_axi_arready),
    .m_axi_rid(1'H0),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rlast(m_axi_rlast),
    .m_axi_ruser(m_axi_ruser),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_rready(m_axi_rready)
  );
endmodule