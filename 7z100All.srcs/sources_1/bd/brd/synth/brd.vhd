--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
--Date        : Sun Mar  1 18:56:59 2020
--Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
--Command     : generate_target brd.bd
--Design      : brd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_7NK3JT is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_7NK3JT;

architecture STRUCTURE of m00_couplers_imp_7NK3JT is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1IXSFWC is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m01_couplers_imp_1IXSFWC;

architecture STRUCTURE of m01_couplers_imp_1IXSFWC is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m01_couplers_to_m01_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m01_couplers_to_m01_couplers_AWVALID(0);
  M_AXI_bready(0) <= m01_couplers_to_m01_couplers_BREADY(0);
  M_AXI_rready(0) <= m01_couplers_to_m01_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wvalid(0) <= m01_couplers_to_m01_couplers_WVALID(0);
  S_AXI_arready(0) <= m01_couplers_to_m01_couplers_ARREADY(0);
  S_AXI_awready(0) <= m01_couplers_to_m01_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m01_couplers_to_m01_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m01_couplers_to_m01_couplers_RVALID(0);
  S_AXI_wready(0) <= m01_couplers_to_m01_couplers_WREADY(0);
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARREADY(0) <= M_AXI_arready(0);
  m01_couplers_to_m01_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWREADY(0) <= M_AXI_awready(0);
  m01_couplers_to_m01_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m01_couplers_to_m01_couplers_BREADY(0) <= S_AXI_bready(0);
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY(0) <= S_AXI_rready(0);
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY(0) <= M_AXI_wready(0);
  m01_couplers_to_m01_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_YCJ54I is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_YCJ54I;

architecture STRUCTURE of m02_couplers_imp_YCJ54I is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_1A5Q2PJ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_1A5Q2PJ;

architecture STRUCTURE of m03_couplers_imp_1A5Q2PJ is
  signal m03_couplers_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_ARREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_ARVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_AWREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_AWVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_BVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_RREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_m03_couplers_RVALID : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_m03_couplers_WREADY : STD_LOGIC;
  signal m03_couplers_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_m03_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m03_couplers_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= m03_couplers_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m03_couplers_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= m03_couplers_to_m03_couplers_AWVALID;
  M_AXI_bready <= m03_couplers_to_m03_couplers_BREADY;
  M_AXI_rready <= m03_couplers_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m03_couplers_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m03_couplers_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m03_couplers_to_m03_couplers_WVALID;
  S_AXI_arready <= m03_couplers_to_m03_couplers_ARREADY;
  S_AXI_awready <= m03_couplers_to_m03_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_m03_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_m03_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_m03_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_m03_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_m03_couplers_RVALID;
  S_AXI_wready <= m03_couplers_to_m03_couplers_WREADY;
  m03_couplers_to_m03_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_m03_couplers_ARREADY <= M_AXI_arready;
  m03_couplers_to_m03_couplers_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_m03_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_m03_couplers_AWREADY <= M_AXI_awready;
  m03_couplers_to_m03_couplers_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_m03_couplers_BREADY <= S_AXI_bready;
  m03_couplers_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m03_couplers_to_m03_couplers_BVALID <= M_AXI_bvalid;
  m03_couplers_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m03_couplers_to_m03_couplers_RREADY <= S_AXI_rready;
  m03_couplers_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m03_couplers_to_m03_couplers_RVALID <= M_AXI_rvalid;
  m03_couplers_to_m03_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_m03_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_m03_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_1OTDC33 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m04_couplers_imp_1OTDC33;

architecture STRUCTURE of m04_couplers_imp_1OTDC33 is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m04_couplers_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid(0) <= m04_couplers_to_m04_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m04_couplers_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid(0) <= m04_couplers_to_m04_couplers_AWVALID(0);
  M_AXI_bready(0) <= m04_couplers_to_m04_couplers_BREADY(0);
  M_AXI_rready(0) <= m04_couplers_to_m04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m04_couplers_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m04_couplers_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m04_couplers_to_m04_couplers_WVALID(0);
  S_AXI_arready(0) <= m04_couplers_to_m04_couplers_ARREADY(0);
  S_AXI_awready(0) <= m04_couplers_to_m04_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_m04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m04_couplers_to_m04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_m04_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_m04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m04_couplers_to_m04_couplers_RVALID(0);
  S_AXI_wready(0) <= m04_couplers_to_m04_couplers_WREADY(0);
  m04_couplers_to_m04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_m04_couplers_ARREADY(0) <= M_AXI_arready(0);
  m04_couplers_to_m04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m04_couplers_to_m04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_m04_couplers_AWREADY(0) <= M_AXI_awready(0);
  m04_couplers_to_m04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m04_couplers_to_m04_couplers_BREADY(0) <= S_AXI_bready(0);
  m04_couplers_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m04_couplers_to_m04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m04_couplers_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m04_couplers_to_m04_couplers_RREADY(0) <= S_AXI_rready(0);
  m04_couplers_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m04_couplers_to_m04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m04_couplers_to_m04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_m04_couplers_WREADY(0) <= M_AXI_wready(0);
  m04_couplers_to_m04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_m04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1DJAG1V is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1DJAG1V;

architecture STRUCTURE of s00_couplers_imp_1DJAG1V is
  component brd_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component brd_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component brd_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_ps7_0_axi_periph_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end brd_ps7_0_axi_periph_1;

architecture STRUCTURE of brd_ps7_0_axi_periph_1 is
  component brd_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component brd_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_ps7_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_ps7_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_ps7_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_ps7_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_ps7_0_axi_periph_WVALID(0);
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arvalid(0) <= m01_couplers_to_ps7_0_axi_periph_ARVALID(0);
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awvalid(0) <= m01_couplers_to_ps7_0_axi_periph_AWVALID(0);
  M01_AXI_bready(0) <= m01_couplers_to_ps7_0_axi_periph_BREADY(0);
  M01_AXI_rready(0) <= m01_couplers_to_ps7_0_axi_periph_RREADY(0);
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wvalid(0) <= m01_couplers_to_ps7_0_axi_periph_WVALID(0);
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_ps7_0_axi_periph_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_ps7_0_axi_periph_AWVALID;
  M02_AXI_bready <= m02_couplers_to_ps7_0_axi_periph_BREADY;
  M02_AXI_rready <= m02_couplers_to_ps7_0_axi_periph_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_ps7_0_axi_periph_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_ps7_0_axi_periph_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_ps7_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_ps7_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_ps7_0_axi_periph_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_ps7_0_axi_periph_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M04_AXI_arvalid(0) <= m04_couplers_to_ps7_0_axi_periph_ARVALID(0);
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M04_AXI_awvalid(0) <= m04_couplers_to_ps7_0_axi_periph_AWVALID(0);
  M04_AXI_bready(0) <= m04_couplers_to_ps7_0_axi_periph_BREADY(0);
  M04_AXI_rready(0) <= m04_couplers_to_ps7_0_axi_periph_RREADY(0);
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M04_AXI_wvalid(0) <= m04_couplers_to_ps7_0_axi_periph_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= ps7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_ps7_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_ps7_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  m02_couplers_to_ps7_0_axi_periph_ARREADY <= M02_AXI_arready;
  m02_couplers_to_ps7_0_axi_periph_AWREADY <= M02_AXI_awready;
  m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_ps7_0_axi_periph_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_ps7_0_axi_periph_WREADY <= M02_AXI_wready;
  m03_couplers_to_ps7_0_axi_periph_ARREADY <= M03_AXI_arready;
  m03_couplers_to_ps7_0_axi_periph_AWREADY <= M03_AXI_awready;
  m03_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_ps7_0_axi_periph_WREADY <= M03_AXI_wready;
  m04_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M04_AXI_arready(0);
  m04_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M04_AXI_awready(0);
  m04_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_ps7_0_axi_periph_BVALID(0) <= M04_AXI_bvalid(0);
  m04_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_ps7_0_axi_periph_RVALID(0) <= M04_AXI_rvalid(0);
  m04_couplers_to_ps7_0_axi_periph_WREADY(0) <= M04_AXI_wready(0);
  ps7_0_axi_periph_ACLK_net <= ACLK;
  ps7_0_axi_periph_ARESETN_net <= ARESETN;
  ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_7NK3JT
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m00_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_ps7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m00_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_ps7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_ps7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_ps7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_ps7_0_axi_periph_WVALID(0),
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1IXSFWC
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m01_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m01_couplers_to_ps7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m01_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m01_couplers_to_ps7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m01_couplers_to_ps7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m01_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m01_couplers_to_ps7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m01_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m01_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wvalid(0) => m01_couplers_to_ps7_0_axi_periph_WVALID(0),
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arready(0) => xbar_to_m01_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awready(0) => xbar_to_m01_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready(0) => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m01_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m01_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready(0) => xbar_to_m01_couplers_WREADY(0),
      S_AXI_wvalid(0) => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_YCJ54I
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m02_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m02_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m02_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m02_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m02_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m02_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m02_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_1A5Q2PJ
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m03_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m03_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m03_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m03_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m03_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_1OTDC33
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready(0) => m04_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m04_couplers_to_ps7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready(0) => m04_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m04_couplers_to_ps7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m04_couplers_to_ps7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m04_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m04_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m04_couplers_to_ps7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m04_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m04_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m04_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m04_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m04_couplers_to_ps7_0_axi_periph_WVALID(0),
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arready(0) => xbar_to_m04_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awready(0) => xbar_to_m04_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready(0) => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wready(0) => xbar_to_m04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid(0) => xbar_to_m04_couplers_WVALID(4)
    );
s00_couplers: entity work.s00_couplers_imp_1DJAG1V
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component brd_xbar_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(14 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(14 downto 0),
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY(0),
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(14 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(14 downto 0),
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY(0),
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID(0),
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID(0),
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY(0),
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => NLW_xbar_m_axi_wstrb_UNCONNECTED(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd is
  port (
    ChipBiasAddrSelect_SBO_0 : out STD_LOGIC;
    ChipBiasBitIn_DO_0 : out STD_LOGIC;
    ChipBiasClock_CBO_0 : out STD_LOGIC;
    ChipBiasDiagSelect_SO_0 : out STD_LOGIC;
    ChipBiasEnable_SO_0 : out STD_LOGIC;
    ChipBiasLatch_SBO_0 : out STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DVSAERAck_SBO_0 : out STD_LOGIC;
    DVSAERData_AI_0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DVSAERReq_ABI_0 : in STD_LOGIC;
    DVSAERReset_SBO_0 : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    IMUClock_CZO_0 : out STD_LOGIC;
    IMUData_DZIO_0 : inout STD_LOGIC;
    IMUFSync_SO_0 : out STD_LOGIC;
    IMUInterrupt_AI_0 : in STD_LOGIC;
    SyncInClock_AI_0 : in STD_LOGIC;
    SyncInSignal1_AI_0 : in STD_LOGIC;
    SyncInSignal2_AI_0 : in STD_LOGIC;
    SyncInSignal_AI_0 : in STD_LOGIC;
    SyncOutClock_CO_0 : out STD_LOGIC;
    SyncOutSignal_SO_0 : out STD_LOGIC;
    led_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ulpi_clk60_i_0 : in STD_LOGIC;
    ulpi_data_io_0 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ulpi_dir_i_0 : in STD_LOGIC;
    ulpi_nxt_i_0 : in STD_LOGIC;
    ulpi_stp_o_0 : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_hsync : out STD_LOGIC;
    vid_vsync : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of brd : entity is "brd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=brd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=58,numReposBlks=51,numNonXlnxBlks=0,numHierBlks=7,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=7,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=25,da_clkrst_cnt=41,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of brd : entity is "brd.hwdef";
end brd;

architecture STRUCTURE of brd is
  component brd_LEDShifter_0_0 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component brd_LEDShifter_0_0;
  component brd_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component brd_axi_gpio_0_0;
  component brd_axi_smc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component brd_axi_smc_0;
  component brd_axi_vdma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axis_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    s_axis_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mm2s_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s2mm_frame_ptr_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_mm2s_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_s2mm_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component brd_axi_vdma_0_0;
  component brd_const_HIGH_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_const_HIGH_0;
  component brd_const_VCC_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_const_VCC_0;
  component brd_const_ZERO_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_const_ZERO_0;
  component brd_eventStreamToConstEn_0_1 is
  port (
    count_V_ap_vld : out STD_LOGIC;
    vgaEn_V_ap_vld : out STD_LOGIC;
    vCnt_V_ap_vld : out STD_LOGIC;
    hCnt_V_ap_vld : out STD_LOGIC;
    regX_V_ap_vld : out STD_LOGIC;
    regY_V_ap_vld : out STD_LOGIC;
    polReg_V_ap_vld : out STD_LOGIC;
    skipFlgOutput_V_ap_vld : out STD_LOGIC;
    tsReg_V_ap_vld : out STD_LOGIC;
    s_axi_config_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_config_AWVALID : in STD_LOGIC;
    s_axi_config_AWREADY : out STD_LOGIC;
    s_axi_config_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_WVALID : in STD_LOGIC;
    s_axi_config_WREADY : out STD_LOGIC;
    s_axi_config_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_BVALID : out STD_LOGIC;
    s_axi_config_BREADY : in STD_LOGIC;
    s_axi_config_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_config_ARVALID : in STD_LOGIC;
    s_axi_config_ARREADY : out STD_LOGIC;
    s_axi_config_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_RVALID : out STD_LOGIC;
    s_axi_config_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    frameStream_TVALID : out STD_LOGIC;
    frameStream_TREADY : in STD_LOGIC;
    frameStream_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    frameStream_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    frameStream_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    frameStream_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    frameStream_TUSER : out STD_LOGIC_VECTOR ( 1 downto 0 );
    frameStream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    frameStream_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    xStream_V_V_TVALID : in STD_LOGIC;
    xStream_V_V_TREADY : out STD_LOGIC;
    xStream_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    yStream_V_V_TVALID : in STD_LOGIC;
    yStream_V_V_TREADY : out STD_LOGIC;
    yStream_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    polStream_V_V_TVALID : in STD_LOGIC;
    polStream_V_V_TREADY : out STD_LOGIC;
    polStream_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tsStream_V_V_TVALID : in STD_LOGIC;
    tsStream_V_V_TREADY : out STD_LOGIC;
    tsStream_V_V_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    custDataStream_V_V_TVALID : in STD_LOGIC;
    custDataStream_V_V_TREADY : out STD_LOGIC;
    custDataStream_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    count_V : out STD_LOGIC_VECTOR ( 63 downto 0 );
    vgaEn_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    vCnt_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hCnt_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regX_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regY_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    polReg_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    skipFlgOutput_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    tsReg_V : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component brd_eventStreamToConstEn_0_1;
  component brd_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_proc_sys_reset_0_0;
  component brd_proc_sys_reset_1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_proc_sys_reset_1_0;
  component brd_processing_system7_0_0 is
  port (
    I2C1_SDA_I : in STD_LOGIC;
    I2C1_SDA_O : out STD_LOGIC;
    I2C1_SDA_T : out STD_LOGIC;
    I2C1_SCL_I : in STD_LOGIC;
    I2C1_SCL_O : out STD_LOGIC;
    I2C1_SCL_T : out STD_LOGIC;
    SPI0_SCLK_I : in STD_LOGIC;
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_SCLK_T : out STD_LOGIC;
    SPI0_MOSI_I : in STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_MOSI_T : out STD_LOGIC;
    SPI0_MISO_I : in STD_LOGIC;
    SPI0_MISO_O : out STD_LOGIC;
    SPI0_MISO_T : out STD_LOGIC;
    SPI0_SS_I : in STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC;
    SPI0_SS1_O : out STD_LOGIC;
    SPI0_SS2_O : out STD_LOGIC;
    SPI0_SS_T : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    USB1_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB1_VBUS_PWRSELECT : out STD_LOGIC;
    USB1_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARREADY : out STD_LOGIC;
    S_AXI_HP0_AWREADY : out STD_LOGIC;
    S_AXI_HP0_BVALID : out STD_LOGIC;
    S_AXI_HP0_RLAST : out STD_LOGIC;
    S_AXI_HP0_RVALID : out STD_LOGIC;
    S_AXI_HP0_WREADY : out STD_LOGIC;
    S_AXI_HP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_RDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_RCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_WCOUNT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_HP0_RACOUNT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_WACOUNT : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_ACLK : in STD_LOGIC;
    S_AXI_HP0_ARVALID : in STD_LOGIC;
    S_AXI_HP0_AWVALID : in STD_LOGIC;
    S_AXI_HP0_BREADY : in STD_LOGIC;
    S_AXI_HP0_RDISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_RREADY : in STD_LOGIC;
    S_AXI_HP0_WLAST : in STD_LOGIC;
    S_AXI_HP0_WRISSUECAP1_EN : in STD_LOGIC;
    S_AXI_HP0_WVALID : in STD_LOGIC;
    S_AXI_HP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_HP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_HP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_HP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_HP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_HP0_WDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_HP0_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_CLK2 : out STD_LOGIC;
    FCLK_CLK3 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component brd_processing_system7_0_0;
  component brd_system_ila_0_1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 12 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe15 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe18 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe19 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe28 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe34 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe35 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe36 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe37 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe39 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_1_AXIS_tlast : in STD_LOGIC;
    SLOT_1_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXIS_tready : in STD_LOGIC;
    SLOT_2_AXIS_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_2_AXIS_tlast : in STD_LOGIC;
    SLOT_2_AXIS_tvalid : in STD_LOGIC;
    SLOT_2_AXIS_tready : in STD_LOGIC;
    SLOT_3_AXIS_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SLOT_3_AXIS_tlast : in STD_LOGIC;
    SLOT_3_AXIS_tvalid : in STD_LOGIC;
    SLOT_3_AXIS_tready : in STD_LOGIC;
    SLOT_4_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_4_AXIS_tlast : in STD_LOGIC;
    SLOT_4_AXIS_tvalid : in STD_LOGIC;
    SLOT_4_AXIS_tready : in STD_LOGIC;
    resetn : in STD_LOGIC;
    probe40 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component brd_system_ila_0_1;
  component brd_system_ila_2_1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe22 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe24 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    probe25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe27 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe28 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe30 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe31 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe32 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe33 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe34 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe35 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe36 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe37 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe38 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe39 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe40 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe41 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe42 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe43 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe44 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe45 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe46 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe47 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe48 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe49 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe50 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe51 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe52 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe53 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe54 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe55 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe56 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe57 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe58 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe59 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe60 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe61 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe62 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe63 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe64 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe65 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe66 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe67 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe68 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe69 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe70 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe71 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe72 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe73 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe74 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe75 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component brd_system_ila_2_1;
  component brd_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_util_vector_logic_0_0;
  component brd_v_axi4s_vid_out_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    fid : in STD_LOGIC;
    vid_io_out_clk : in STD_LOGIC;
    vid_io_out_ce : in STD_LOGIC;
    vid_io_out_reset : in STD_LOGIC;
    vid_active_video : out STD_LOGIC;
    vid_vsync : out STD_LOGIC;
    vid_hsync : out STD_LOGIC;
    vid_vblank : out STD_LOGIC;
    vid_hblank : out STD_LOGIC;
    vid_field_id : out STD_LOGIC;
    vid_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vtg_vsync : in STD_LOGIC;
    vtg_hsync : in STD_LOGIC;
    vtg_vblank : in STD_LOGIC;
    vtg_hblank : in STD_LOGIC;
    vtg_active_video : in STD_LOGIC;
    vtg_field_id : in STD_LOGIC;
    vtg_ce : out STD_LOGIC;
    locked : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component brd_v_axi4s_vid_out_0_0;
  component brd_v_tc_0_0 is
  port (
    clk : in STD_LOGIC;
    clken : in STD_LOGIC;
    gen_clken : in STD_LOGIC;
    hsync_out : out STD_LOGIC;
    hblank_out : out STD_LOGIC;
    vsync_out : out STD_LOGIC;
    vblank_out : out STD_LOGIC;
    active_video_out : out STD_LOGIC;
    resetn : in STD_LOGIC;
    fsync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_v_tc_0_0;
  component brd_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component brd_xlconcat_0_0;
  component brd_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component brd_xlconstant_0_0;
  component brd_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_xlconstant_0_1;
  component brd_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_xlslice_0_0;
  component brd_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_xlslice_1_0;
  component brd_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_xlslice_2_0;
  component brd_xlslice_2_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_xlslice_2_1;
  component brd_xlslice_3_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component brd_xlslice_3_0;
  component brd_fifo_generator_0_0 is
  port (
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 13 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    prog_full : out STD_LOGIC
  );
  end component brd_fifo_generator_0_0;
  component brd_util_vector_logic_2_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_util_vector_logic_2_1;
  component brd_xlslice_5_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 12 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_xlslice_5_0;
  component brd_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_xlconstant_1_0;
  component brd_util_vector_logic_3_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_util_vector_logic_3_0;
  component brd_testAERDVSSM_0_0 is
  port (
    USBClock_CI : in STD_LOGIC;
    LogicClk_CI : in STD_LOGIC;
    ADCClk_CI : in STD_LOGIC;
    Reset_RI : in STD_LOGIC;
    SPISlaveSelect_ABI : in STD_LOGIC;
    SPIClock_AI : in STD_LOGIC;
    SPIMOSI_AI : in STD_LOGIC;
    SPIMISO_DZO : out STD_LOGIC;
    ChipBiasEnable_SO : out STD_LOGIC;
    ChipBiasDiagSelect_SO : out STD_LOGIC;
    ChipBiasAddrSelect_SBO : out STD_LOGIC;
    ChipBiasClock_CBO : out STD_LOGIC;
    ChipBiasBitIn_DO : out STD_LOGIC;
    ChipBiasLatch_SBO : out STD_LOGIC;
    DVSAERData_AI : in STD_LOGIC_VECTOR ( 10 downto 0 );
    DVSAERReq_ABI : in STD_LOGIC;
    DVSAERAck_SBO : out STD_LOGIC;
    DVSAERReset_SBO : out STD_LOGIC;
    IMUClock_CZO : out STD_LOGIC;
    IMUData_DZIO : inout STD_LOGIC;
    IMUInterrupt_AI : in STD_LOGIC;
    IMUFSync_SO : out STD_LOGIC;
    SyncOutClock_CO : out STD_LOGIC;
    SyncOutSignal_SO : out STD_LOGIC;
    SyncInClock_AI : in STD_LOGIC;
    SyncInSignal_AI : in STD_LOGIC;
    SyncInSignal1_AI : in STD_LOGIC;
    SyncInSignal2_AI : in STD_LOGIC;
    AERSMFifoAlmostFull_AI : in STD_LOGIC;
    AERSMFifoFull_AI : in STD_LOGIC;
    AERSMOutFifoWrite_SO : out STD_LOGIC;
    AERSMOutFifoData_DO : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component brd_testAERDVSSM_0_0;
  component brd_USBFifoToDVSSPI_0_0 is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    spiReady_i : in STD_LOGIC;
    setupDataRecStart_i : in STD_LOGIC;
    outDataRecStart_i : in STD_LOGIC;
    dataRecEnd_i : in STD_LOGIC;
    inputDataValid_i : in STD_LOGIC;
    inputData_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dvsRXDataValid_i : in STD_LOGIC;
    dvsRXByte_i : in STD_LOGIC_VECTOR ( 47 downto 0 );
    dvs_resp_addr_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    setupPktReceived_q_do : out STD_LOGIC;
    outPktReceived_q_do : out STD_LOGIC;
    dataSPIToSendPrepared_w_do : out STD_LOGIC;
    wrSetupIndex_q_do : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wrOUTIndex_q_do : out STD_LOGIC_VECTOR ( 2 downto 0 );
    outputDataValid_o : out STD_LOGIC;
    outputData_o : out STD_LOGIC_VECTOR ( 47 downto 0 );
    rxDataComplete_o : out STD_LOGIC;
    dvs_resp_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component brd_USBFifoToDVSSPI_0_0;
  component brd_SPI_Master_With_Sing_0_2 is
  port (
    i_Rst_L : in STD_LOGIC;
    i_Clk : in STD_LOGIC;
    i_TX_Count : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_TX_Byte : in STD_LOGIC_VECTOR ( 47 downto 0 );
    i_TX_DV : in STD_LOGIC;
    o_TX_Ready : out STD_LOGIC;
    o_RX_Count : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_RX_DV : out STD_LOGIC;
    o_RX_Byte : out STD_LOGIC_VECTOR ( 47 downto 0 );
    w_Master_Ready_do : out STD_LOGIC;
    r_RX_Bit_Count_do : out STD_LOGIC_VECTOR ( 5 downto 0 );
    r_TX_Bit_Count_do : out STD_LOGIC_VECTOR ( 5 downto 0 );
    o_SPI_Clk : out STD_LOGIC;
    i_SPI_MISO : in STD_LOGIC;
    o_SPI_MOSI : out STD_LOGIC;
    o_SPI_CS_n : out STD_LOGIC
  );
  end component brd_SPI_Master_With_Sing_0_2;
  component brd_ulpi_wrapper_0_0 is
  port (
    ulpi_clk60_i : in STD_LOGIC;
    ulpi_rst_i : in STD_LOGIC;
    ulpi_data_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    ulpi_dir_i : in STD_LOGIC;
    ulpi_nxt_i : in STD_LOGIC;
    ulpi_stp_o : out STD_LOGIC;
    mode_update_o : out STD_LOGIC;
    otg_update_o : out STD_LOGIC;
    state_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    xcvrselect_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    termselect_o : out STD_LOGIC;
    opmode_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mode_complete_o : out STD_LOGIC;
    otg_complete_o : out STD_LOGIC;
    utmi_tx_ready_o : out STD_LOGIC;
    tx_delay_complete_o : out STD_LOGIC;
    utmi_tx_accept_o : out STD_LOGIC;
    ulpi_data_out_i_d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ulpi_data_in_o_d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ulpi_data_dir_d : out STD_LOGIC;
    ulpi_reg_read_flag_d : out STD_LOGIC;
    turnaround_d : out STD_LOGIC;
    tx_wr_idx_q_d : out STD_LOGIC;
    tx_rd_idx_q_d : out STD_LOGIC;
    utmi_data_q_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ulpi_dir_q_do : out STD_LOGIC;
    ulpi_nxt_q_do : out STD_LOGIC;
    utmi_txvalid_i : in STD_LOGIC;
    utmi_txready_o : out STD_LOGIC;
    utmi_rxvalid_o : out STD_LOGIC;
    utmi_rxactive_o : out STD_LOGIC;
    utmi_rxerror_o : out STD_LOGIC;
    utmi_data_in_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    utmi_data_out_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    utmi_xcvrselect_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    utmi_termselect_i : in STD_LOGIC;
    utmi_op_mode_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    utmi_dppulldown_i : in STD_LOGIC;
    utmi_dmpulldown_i : in STD_LOGIC;
    utmi_linestate_o : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component brd_ulpi_wrapper_0_0;
  component brd_c_addsub_as_invert_and_delay_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_c_addsub_as_invert_and_delay_0;
  component brd_util_vector_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_util_vector_logic_1_0;
  component brd_usb_cdc_core_0_0 is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    enable_i : in STD_LOGIC;
    utmi_data_in_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    utmi_txready_i : in STD_LOGIC;
    utmi_rxvalid_i : in STD_LOGIC;
    utmi_rxactive_i : in STD_LOGIC;
    utmi_rxerror_i : in STD_LOGIC;
    utmi_linestate_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inport_valid_i : in STD_LOGIC;
    inport_data_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    outport_accept_i : in STD_LOGIC;
    ctrl_host_ack_i : in STD_LOGIC;
    setup_token_valid_intr_o : out STD_LOGIC;
    setup_valid_conter_q_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    state_r_do : out STD_LOGIC_VECTOR ( 2 downto 0 );
    usb_rst_time_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    token_valid_w_do : out STD_LOGIC;
    token_dev_w_do : out STD_LOGIC_VECTOR ( 6 downto 0 );
    token_ep_w_do : out STD_LOGIC_VECTOR ( 3 downto 0 );
    current_addr_i_do : out STD_LOGIC_VECTOR ( 6 downto 0 );
    reg_dev_addr_i_do : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ctrl_sending_r_do : out STD_LOGIC;
    ctrl_send_accept_w_do : out STD_LOGIC;
    desc_addr_q_do : out STD_LOGIC_VECTOR ( 6 downto 0 );
    setup_valid_q_do : out STD_LOGIC;
    setup_frame_q_do : out STD_LOGIC;
    rx_last_w_do : out STD_LOGIC;
    bmRequestType_w_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bRequest_w_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wValue_w_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    usb_reset_w_do : out STD_LOGIC;
    usb_reset_counter_q_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    debug_counter_q_do : out STD_LOGIC_VECTOR ( 63 downto 0 );
    current_token_debug_counter_q_do : out STD_LOGIC_VECTOR ( 63 downto 0 );
    token_valid_counter_q_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    setup_wr_idx_q_do : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ep0_rx_valid_w_do : out STD_LOGIC;
    rx_strb_w_do : out STD_LOGIC;
    ctrl_txvalid_q_do : out STD_LOGIC;
    ctrl_txdata_q_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ctrl_txstall_q_do : out STD_LOGIC;
    ctrl_stall_r_do : out STD_LOGIC;
    ctrl_ack_r_do : out STD_LOGIC;
    readAXIBRAM_r_do : out STD_LOGIC;
    sie_tx_state_q_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    usbf_tx_valid_q_do : out STD_LOGIC;
    usbf_tx_pid_q_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    usbf_state_q_do : out STD_LOGIC_VECTOR ( 2 downto 0 );
    usbf_ep_data_bit_r_do : out STD_LOGIC;
    usbf_new_data_bit_r_do : out STD_LOGIC;
    data_complete_o_do : out STD_LOGIC;
    setup_resp_valid_delay_q_do : out STD_LOGIC;
    token_valid_cnt_q_do : out STD_LOGIC_VECTOR ( 31 downto 0 );
    status_stage_w_do : out STD_LOGIC;
    ep2_tx_data_valid_w_do : out STD_LOGIC;
    ep2_tx_data_w_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ep2_tx_data_last_w_do : out STD_LOGIC;
    ep2_tx_data_accept_w_do : out STD_LOGIC;
    inport_valid_q_do : out STD_LOGIC;
    usbfrx_shift_en_w_do : out STD_LOGIC;
    usbfrx_data_w_do : out STD_LOGIC_VECTOR ( 7 downto 0 );
    usbfrx_data_ready_w_do : out STD_LOGIC;
    usbfrx_crc_byte_w_do : out STD_LOGIC;
    usbfrx_rx_active_w_do : out STD_LOGIC;
    vendorReqRecived_o : out STD_LOGIC;
    axi_bram_addr_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_bram_w_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_bram_r_data_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    utmi_data_out_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    utmi_txvalid_o : out STD_LOGIC;
    utmi_op_mode_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    utmi_xcvrselect_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    utmi_termselect_o : out STD_LOGIC;
    utmi_dppulldown_o : out STD_LOGIC;
    utmi_dmpulldown_o : out STD_LOGIC;
    tx_sent_data_counter_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    inport_accept_o : out STD_LOGIC;
    outport_valid_o : out STD_LOGIC;
    outport_data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_out_do : out STD_LOGIC;
    ep0_rx_setup_w_do : out STD_LOGIC
  );
  end component brd_usb_cdc_core_0_0;
  component brd_xlconstant_1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_xlconstant_1_1;
  component brd_xlconstant_1_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component brd_xlconstant_1_2;
  component brd_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component brd_axis_data_fifo_0_0;
  component brd_EVFastCornerStream_0_0 is
  port (
    s_axi_config_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_config_AWVALID : in STD_LOGIC;
    s_axi_config_AWREADY : out STD_LOGIC;
    s_axi_config_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_WVALID : in STD_LOGIC;
    s_axi_config_WREADY : out STD_LOGIC;
    s_axi_config_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_BVALID : out STD_LOGIC;
    s_axi_config_BREADY : in STD_LOGIC;
    s_axi_config_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_config_ARVALID : in STD_LOGIC;
    s_axi_config_ARREADY : out STD_LOGIC;
    s_axi_config_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_RVALID : out STD_LOGIC;
    s_axi_config_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    xStreamIn_V_V_TVALID : in STD_LOGIC;
    xStreamIn_V_V_TREADY : out STD_LOGIC;
    xStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    yStreamIn_V_V_TVALID : in STD_LOGIC;
    yStreamIn_V_V_TREADY : out STD_LOGIC;
    yStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tsStreamIn_V_V_TVALID : in STD_LOGIC;
    tsStreamIn_V_V_TREADY : out STD_LOGIC;
    tsStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    polStreamIn_V_V_TVALID : in STD_LOGIC;
    polStreamIn_V_V_TREADY : out STD_LOGIC;
    polStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xStreamOut_V_V_TVALID : out STD_LOGIC;
    xStreamOut_V_V_TREADY : in STD_LOGIC;
    xStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    yStreamOut_V_V_TVALID : out STD_LOGIC;
    yStreamOut_V_V_TREADY : in STD_LOGIC;
    yStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tsStreamOut_V_V_TVALID : out STD_LOGIC;
    tsStreamOut_V_V_TREADY : in STD_LOGIC;
    tsStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    polStreamOut_V_V_TVALID : out STD_LOGIC;
    polStreamOut_V_V_TREADY : in STD_LOGIC;
    polStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pixelDataStream_V_V_TVALID : out STD_LOGIC;
    pixelDataStream_V_V_TREADY : in STD_LOGIC;
    pixelDataStream_V_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component brd_EVFastCornerStream_0_0;
  component brd_EVMUXDataToXYTSStream_0_0 is
  port (
    dataReg_V_ap_vld : out STD_LOGIC;
    xRegReg_V_ap_vld : out STD_LOGIC;
    yRegReg_V_ap_vld : out STD_LOGIC;
    tsRegReg_V_ap_vld : out STD_LOGIC;
    polRegReg_V_ap_vld : out STD_LOGIC;
    tsWrapRegReg_V_ap_vld : out STD_LOGIC;
    s_axi_config_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_config_AWVALID : in STD_LOGIC;
    s_axi_config_AWREADY : out STD_LOGIC;
    s_axi_config_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_config_WVALID : in STD_LOGIC;
    s_axi_config_WREADY : out STD_LOGIC;
    s_axi_config_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_BVALID : out STD_LOGIC;
    s_axi_config_BREADY : in STD_LOGIC;
    s_axi_config_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_config_ARVALID : in STD_LOGIC;
    s_axi_config_ARREADY : out STD_LOGIC;
    s_axi_config_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_config_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_config_RVALID : out STD_LOGIC;
    s_axi_config_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    rawDataStreamOut_V_V_TVALID : out STD_LOGIC;
    rawDataStreamOut_V_V_TREADY : in STD_LOGIC;
    rawDataStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tsStreamOut_V_V_TVALID : out STD_LOGIC;
    tsStreamOut_V_V_TREADY : in STD_LOGIC;
    tsStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    yStreamOut_V_V_TVALID : out STD_LOGIC;
    yStreamOut_V_V_TREADY : in STD_LOGIC;
    yStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    xStreamOut_V_V_TVALID : out STD_LOGIC;
    xStreamOut_V_V_TREADY : in STD_LOGIC;
    xStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    polStreamOut_V_V_TVALID : out STD_LOGIC;
    polStreamOut_V_V_TREADY : in STD_LOGIC;
    polStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    eventFIFOIn_V : in STD_LOGIC_VECTOR ( 15 downto 0 );
    eventFIFODataValid_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    dataReg_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    xRegReg_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    yRegReg_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tsRegReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 );
    polRegReg_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    tsWrapRegReg_V : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component brd_EVMUXDataToXYTSStream_0_0;
  component brd_RawStreamToFIFO_0_0 is
  port (
    fifoIFOutData_V_ap_vld : out STD_LOGIC;
    skippedData_V_ap_vld : out STD_LOGIC;
    nonMonTSDiffFlgReg_V_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    streamIn_V_V_TVALID : in STD_LOGIC;
    streamIn_V_V_TREADY : out STD_LOGIC;
    streamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifoIFInFull_n_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifoIFOutData_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    skippedData_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    nonMonTSDiffFlgReg_V : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_RawStreamToFIFO_0_0;
  component brd_axis_data_fifo_1_2 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component brd_axis_data_fifo_1_2;
  component brd_system_ila_1_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_1_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXIS_tlast : in STD_LOGIC;
    SLOT_1_AXIS_tvalid : in STD_LOGIC;
    SLOT_1_AXIS_tready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  end component brd_system_ila_1_0;
  component brd_checkEvUSBStream_0_1 is
  port (
    dataReg_V_ap_vld : out STD_LOGIC;
    nonMonTSDiffFlgReg_V_ap_vld : out STD_LOGIC;
    tsReg_V_ap_vld : out STD_LOGIC;
    glLastTSReg_V_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    evUSBStreamIn_V_V_TVALID : in STD_LOGIC;
    evUSBStreamIn_V_V_TREADY : out STD_LOGIC;
    evUSBStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dataReg_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    nonMonTSDiffFlgReg_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    tsReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 );
    glLastTSReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component brd_checkEvUSBStream_0_1;
  component brd_convertToStream_0_1 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    evUSBStreamOut_V_V_TVALID : out STD_LOGIC;
    evUSBStreamOut_V_V_TREADY : in STD_LOGIC;
    evUSBStreamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dataReady_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    dataValid_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    dataToCheck_V : in STD_LOGIC_VECTOR ( 7 downto 0 );
    eventFIFODVReg_V : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_convertToStream_0_1;
  component brd_MyDFFSynchronizer_0_0 is
  port (
    SyncClock_CI : in STD_LOGIC;
    Reset_RI : in STD_LOGIC;
    SignalToSync_SI : in STD_LOGIC_VECTOR ( 0 to 0 );
    SyncedSignal_SO : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_MyDFFSynchronizer_0_0;
  component brd_MyDFFSynchronizer_0_1 is
  port (
    SyncClock_CI : in STD_LOGIC;
    Reset_RI : in STD_LOGIC;
    SignalToSync_SI : in STD_LOGIC_VECTOR ( 0 to 0 );
    SyncedSignal_SO : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_MyDFFSynchronizer_0_1;
  component brd_XYTSStreamToRawStream_0_0 is
  port (
    tsReg_V_ap_vld : out STD_LOGIC;
    glLastTSReg_V_ap_vld : out STD_LOGIC;
    yReg_V_ap_vld : out STD_LOGIC;
    glLastYReg_V_ap_vld : out STD_LOGIC;
    tsDiffFlgReg_V_ap_vld : out STD_LOGIC;
    yDiffFlgReg_V_ap_vld : out STD_LOGIC;
    nonMonTSDiffFlgReg_V_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    streamOut_V_V_TVALID : out STD_LOGIC;
    streamOut_V_V_TREADY : in STD_LOGIC;
    streamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    xStreamIn_V_V_TVALID : in STD_LOGIC;
    xStreamIn_V_V_TREADY : out STD_LOGIC;
    xStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    yStreamIn_V_V_TVALID : in STD_LOGIC;
    yStreamIn_V_V_TREADY : out STD_LOGIC;
    yStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tsStreamIn_V_V_TVALID : in STD_LOGIC;
    tsStreamIn_V_V_TREADY : out STD_LOGIC;
    tsStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    polStreamIn_V_V_TVALID : in STD_LOGIC;
    polStreamIn_V_V_TREADY : out STD_LOGIC;
    polStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tsReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 );
    glLastTSReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 );
    yReg_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    glLastYReg_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tsDiffFlgReg_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    yDiffFlgReg_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    nonMonTSDiffFlgReg_V : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component brd_XYTSStreamToRawStream_0_0;
  signal DVSAERData_AI_0_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute DEBUG : string;
  attribute DEBUG of DVSAERData_AI_0_1 : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of DVSAERData_AI_0_1 : signal is std.standard.true;
  signal DVSAERReq_ABI_0_1 : STD_LOGIC;
  attribute DEBUG of DVSAERReq_ABI_0_1 : signal is "true";
  attribute MARK_DEBUG of DVSAERReq_ABI_0_1 : signal is std.standard.true;
  signal EVABMOFStream_0_pixelDataStream_V_V_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal EVABMOFStream_0_pixelDataStream_V_V_TREADY : STD_LOGIC;
  signal EVABMOFStream_0_pixelDataStream_V_V_TVALID : STD_LOGIC;
  signal EVABMOFStream_0_polStreamOut_V_V_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal EVABMOFStream_0_polStreamOut_V_V_TREADY : STD_LOGIC;
  signal EVABMOFStream_0_polStreamOut_V_V_TVALID : STD_LOGIC;
  signal EVABMOFStream_0_tsStreamOut_V_V_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal EVABMOFStream_0_tsStreamOut_V_V_TREADY : STD_LOGIC;
  signal EVABMOFStream_0_tsStreamOut_V_V_TVALID : STD_LOGIC;
  signal EVABMOFStream_0_xStreamOut_V_V_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal EVABMOFStream_0_xStreamOut_V_V_TREADY : STD_LOGIC;
  signal EVABMOFStream_0_xStreamOut_V_V_TVALID : STD_LOGIC;
  signal EVABMOFStream_0_yStreamOut_V_V_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal EVABMOFStream_0_yStreamOut_V_V_TREADY : STD_LOGIC;
  signal EVABMOFStream_0_yStreamOut_V_V_TVALID : STD_LOGIC;
  signal EVMUXDataToXYTSStream_0_polStreamOut_V_V_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal EVMUXDataToXYTSStream_0_polStreamOut_V_V_TREADY : STD_LOGIC;
  signal EVMUXDataToXYTSStream_0_polStreamOut_V_V_TVALID : STD_LOGIC;
  signal EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute CONN_BUS_INFO : string;
  attribute CONN_BUS_INFO of EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TDATA : signal is "EVMUXDataToXYTSStream_0_tsStreamOut_V_V xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG of EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TDATA : signal is "true";
  attribute MARK_DEBUG of EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TDATA : signal is std.standard.true;
  signal EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TREADY : signal is "EVMUXDataToXYTSStream_0_tsStreamOut_V_V xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG of EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TREADY : signal is "true";
  attribute MARK_DEBUG of EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TREADY : signal is std.standard.true;
  signal EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TVALID : signal is "EVMUXDataToXYTSStream_0_tsStreamOut_V_V xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TVALID : signal is "true";
  attribute MARK_DEBUG of EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TVALID : signal is std.standard.true;
  signal EVMUXDataToXYTSStream_0_xStreamOut_V_V_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute CONN_BUS_INFO of EVMUXDataToXYTSStream_0_xStreamOut_V_V_TDATA : signal is "EVMUXDataToXYTSStream_0_xStreamOut_V_V xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG of EVMUXDataToXYTSStream_0_xStreamOut_V_V_TDATA : signal is "true";
  attribute MARK_DEBUG of EVMUXDataToXYTSStream_0_xStreamOut_V_V_TDATA : signal is std.standard.true;
  signal EVMUXDataToXYTSStream_0_xStreamOut_V_V_TREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of EVMUXDataToXYTSStream_0_xStreamOut_V_V_TREADY : signal is "EVMUXDataToXYTSStream_0_xStreamOut_V_V xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG of EVMUXDataToXYTSStream_0_xStreamOut_V_V_TREADY : signal is "true";
  attribute MARK_DEBUG of EVMUXDataToXYTSStream_0_xStreamOut_V_V_TREADY : signal is std.standard.true;
  signal EVMUXDataToXYTSStream_0_xStreamOut_V_V_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of EVMUXDataToXYTSStream_0_xStreamOut_V_V_TVALID : signal is "EVMUXDataToXYTSStream_0_xStreamOut_V_V xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of EVMUXDataToXYTSStream_0_xStreamOut_V_V_TVALID : signal is "true";
  attribute MARK_DEBUG of EVMUXDataToXYTSStream_0_xStreamOut_V_V_TVALID : signal is std.standard.true;
  signal EVMUXDataToXYTSStream_0_yStreamOut_V_V_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute CONN_BUS_INFO of EVMUXDataToXYTSStream_0_yStreamOut_V_V_TDATA : signal is "EVMUXDataToXYTSStream_0_yStreamOut_V_V xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG of EVMUXDataToXYTSStream_0_yStreamOut_V_V_TDATA : signal is "true";
  attribute MARK_DEBUG of EVMUXDataToXYTSStream_0_yStreamOut_V_V_TDATA : signal is std.standard.true;
  signal EVMUXDataToXYTSStream_0_yStreamOut_V_V_TREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of EVMUXDataToXYTSStream_0_yStreamOut_V_V_TREADY : signal is "EVMUXDataToXYTSStream_0_yStreamOut_V_V xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG of EVMUXDataToXYTSStream_0_yStreamOut_V_V_TREADY : signal is "true";
  attribute MARK_DEBUG of EVMUXDataToXYTSStream_0_yStreamOut_V_V_TREADY : signal is std.standard.true;
  signal EVMUXDataToXYTSStream_0_yStreamOut_V_V_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of EVMUXDataToXYTSStream_0_yStreamOut_V_V_TVALID : signal is "EVMUXDataToXYTSStream_0_yStreamOut_V_V xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of EVMUXDataToXYTSStream_0_yStreamOut_V_V_TVALID : signal is "true";
  attribute MARK_DEBUG of EVMUXDataToXYTSStream_0_yStreamOut_V_V_TVALID : signal is std.standard.true;
  signal IMUInterrupt_AI_0_1 : STD_LOGIC;
  signal LEDShifter_0_led : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal MyDFFSynchronizer_0_SyncedSignal_SO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MyDFFSynchronizer_1_SyncedSignal_SO : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Net2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Net3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SPI_Master_With_Sing_0_o_RX_Byte : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute DEBUG of SPI_Master_With_Sing_0_o_RX_Byte : signal is "true";
  attribute MARK_DEBUG of SPI_Master_With_Sing_0_o_RX_Byte : signal is std.standard.true;
  signal SPI_Master_With_Sing_0_o_RX_DV : STD_LOGIC;
  attribute DEBUG of SPI_Master_With_Sing_0_o_RX_DV : signal is "true";
  attribute MARK_DEBUG of SPI_Master_With_Sing_0_o_RX_DV : signal is std.standard.true;
  signal SPI_Master_With_Sing_0_o_SPI_CS_n : STD_LOGIC;
  signal SPI_Master_With_Sing_0_o_SPI_Clk : STD_LOGIC;
  signal SPI_Master_With_Sing_0_o_SPI_MOSI : STD_LOGIC;
  signal SPI_Master_With_Sing_0_o_TX_Ready : STD_LOGIC;
  attribute DEBUG of SPI_Master_With_Sing_0_o_TX_Ready : signal is "true";
  attribute MARK_DEBUG of SPI_Master_With_Sing_0_o_TX_Ready : signal is std.standard.true;
  signal StreamToFIFO_0_fifoDataOut_V_din : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal StreamToFIFO_0_fifoDataOut_V_write : STD_LOGIC;
  attribute DEBUG of StreamToFIFO_0_fifoDataOut_V_write : signal is "true";
  attribute MARK_DEBUG of StreamToFIFO_0_fifoDataOut_V_write : signal is std.standard.true;
  signal SyncInClock_AI_0_1 : STD_LOGIC;
  signal SyncInSignal1_AI_0_1 : STD_LOGIC;
  signal SyncInSignal2_AI_0_1 : STD_LOGIC;
  signal SyncInSignal_AI_0_1 : STD_LOGIC;
  signal USBFifoToDVSSPI_0_outputDataValid_o : STD_LOGIC;
  attribute DEBUG of USBFifoToDVSSPI_0_outputDataValid_o : signal is "true";
  attribute MARK_DEBUG of USBFifoToDVSSPI_0_outputDataValid_o : signal is std.standard.true;
  signal USBFifoToDVSSPI_0_outputData_o : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute DEBUG of USBFifoToDVSSPI_0_outputData_o : signal is "true";
  attribute MARK_DEBUG of USBFifoToDVSSPI_0_outputData_o : signal is std.standard.true;
  signal XYTSStreamToRawStream_0_streamOut_V_V_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute CONN_BUS_INFO of XYTSStreamToRawStream_0_streamOut_V_V_TDATA : signal is "XYTSStreamToRawStream_0_streamOut_V_V xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG of XYTSStreamToRawStream_0_streamOut_V_V_TDATA : signal is "true";
  attribute MARK_DEBUG of XYTSStreamToRawStream_0_streamOut_V_V_TDATA : signal is std.standard.true;
  signal XYTSStreamToRawStream_0_streamOut_V_V_TREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of XYTSStreamToRawStream_0_streamOut_V_V_TREADY : signal is "XYTSStreamToRawStream_0_streamOut_V_V xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG of XYTSStreamToRawStream_0_streamOut_V_V_TREADY : signal is "true";
  attribute MARK_DEBUG of XYTSStreamToRawStream_0_streamOut_V_V_TREADY : signal is std.standard.true;
  signal XYTSStreamToRawStream_0_streamOut_V_V_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of XYTSStreamToRawStream_0_streamOut_V_V_TVALID : signal is "XYTSStreamToRawStream_0_streamOut_V_V xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of XYTSStreamToRawStream_0_streamOut_V_V_TVALID : signal is "true";
  attribute MARK_DEBUG of XYTSStreamToRawStream_0_streamOut_V_V_TVALID : signal is std.standard.true;
  signal axi_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_gpio_0_ip2intc_irpt : STD_LOGIC;
  signal axi_smc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_smc_M00_AXI_RLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_smc_M00_AXI_WLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axi_vdma_0_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXIS_MM2S_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_vdma_0_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_vdma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vdma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axis_data_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of axis_data_count : signal is "true";
  attribute MARK_DEBUG of axis_data_count : signal is std.standard.true;
  signal axis_data_fifo_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute CONN_BUS_INFO of axis_data_fifo_0_M_AXIS_TDATA : signal is "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG of axis_data_fifo_0_M_AXIS_TDATA : signal is "true";
  attribute MARK_DEBUG of axis_data_fifo_0_M_AXIS_TDATA : signal is std.standard.true;
  signal axis_data_fifo_0_M_AXIS_TREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axis_data_fifo_0_M_AXIS_TREADY : signal is "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG of axis_data_fifo_0_M_AXIS_TREADY : signal is "true";
  attribute MARK_DEBUG of axis_data_fifo_0_M_AXIS_TREADY : signal is std.standard.true;
  signal axis_data_fifo_0_M_AXIS_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axis_data_fifo_0_M_AXIS_TVALID : signal is "axis_data_fifo_0_M_AXIS xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of axis_data_fifo_0_M_AXIS_TVALID : signal is "true";
  attribute MARK_DEBUG of axis_data_fifo_0_M_AXIS_TVALID : signal is std.standard.true;
  signal axis_data_fifo_1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of axis_data_fifo_1_M_AXIS_TDATA : signal is "axis_data_fifo_1_M_AXIS xilinx.com:interface:axis:1.0 None TDATA";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of axis_data_fifo_1_M_AXIS_TDATA : signal is std.standard.true;
  signal axis_data_fifo_1_M_AXIS_TREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of axis_data_fifo_1_M_AXIS_TREADY : signal is "axis_data_fifo_1_M_AXIS xilinx.com:interface:axis:1.0 None TREADY";
  attribute DONT_TOUCH of axis_data_fifo_1_M_AXIS_TREADY : signal is std.standard.true;
  signal axis_data_fifo_1_M_AXIS_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of axis_data_fifo_1_M_AXIS_TVALID : signal is "axis_data_fifo_1_M_AXIS xilinx.com:interface:axis:1.0 None TVALID";
  attribute DONT_TOUCH of axis_data_fifo_1_M_AXIS_TVALID : signal is std.standard.true;
  signal bmRequestType_w_do : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of bmRequestType_w_do : signal is "true";
  attribute MARK_DEBUG of bmRequestType_w_do : signal is std.standard.true;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DEBUG of c_counter_binary_0_Q : signal is "true";
  attribute MARK_DEBUG of c_counter_binary_0_Q : signal is std.standard.true;
  signal checkEvUSBStream_0_glLastTSReg_V_ap_vld : STD_LOGIC;
  signal const_VCC_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal convertToStream_0_evUSBStreamOut_V_V_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CONN_BUS_INFO of convertToStream_0_evUSBStreamOut_V_V_TDATA : signal is "convertToStream_0_evUSBStreamOut_V_V xilinx.com:interface:axis:1.0 None TDATA";
  attribute DEBUG of convertToStream_0_evUSBStreamOut_V_V_TDATA : signal is "true";
  attribute MARK_DEBUG of convertToStream_0_evUSBStreamOut_V_V_TDATA : signal is std.standard.true;
  signal convertToStream_0_evUSBStreamOut_V_V_TREADY : STD_LOGIC;
  attribute CONN_BUS_INFO of convertToStream_0_evUSBStreamOut_V_V_TREADY : signal is "convertToStream_0_evUSBStreamOut_V_V xilinx.com:interface:axis:1.0 None TREADY";
  attribute DEBUG of convertToStream_0_evUSBStreamOut_V_V_TREADY : signal is "true";
  attribute MARK_DEBUG of convertToStream_0_evUSBStreamOut_V_V_TREADY : signal is std.standard.true;
  signal convertToStream_0_evUSBStreamOut_V_V_TVALID : STD_LOGIC;
  attribute CONN_BUS_INFO of convertToStream_0_evUSBStreamOut_V_V_TVALID : signal is "convertToStream_0_evUSBStreamOut_V_V xilinx.com:interface:axis:1.0 None TVALID";
  attribute DEBUG of convertToStream_0_evUSBStreamOut_V_V_TVALID : signal is "true";
  attribute MARK_DEBUG of convertToStream_0_evUSBStreamOut_V_V_TVALID : signal is std.standard.true;
  signal ctrl_ack_r_do : STD_LOGIC;
  attribute DEBUG of ctrl_ack_r_do : signal is "true";
  attribute MARK_DEBUG of ctrl_ack_r_do : signal is std.standard.true;
  signal ctrl_sending_r_do : STD_LOGIC;
  attribute DEBUG of ctrl_sending_r_do : signal is "true";
  attribute MARK_DEBUG of ctrl_sending_r_do : signal is std.standard.true;
  signal ctrl_stall_r_do : STD_LOGIC;
  attribute DEBUG of ctrl_stall_r_do : signal is "true";
  attribute MARK_DEBUG of ctrl_stall_r_do : signal is std.standard.true;
  signal ctrl_txdata_q_do : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of ctrl_txdata_q_do : signal is "true";
  attribute MARK_DEBUG of ctrl_txdata_q_do : signal is std.standard.true;
  signal ctrl_txvalid_q_do : STD_LOGIC;
  attribute DEBUG of ctrl_txvalid_q_do : signal is "true";
  attribute MARK_DEBUG of ctrl_txvalid_q_do : signal is std.standard.true;
  signal dataReg_V : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dataReg_V_ap_vld : STD_LOGIC;
  signal dataSPIToSendPrepared_w_do : STD_LOGIC;
  attribute DEBUG of dataSPIToSendPrepared_w_do : signal is "true";
  attribute MARK_DEBUG of dataSPIToSendPrepared_w_do : signal is std.standard.true;
  signal dvs_resp_data_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of dvs_resp_data_o : signal is "true";
  attribute MARK_DEBUG of dvs_resp_data_o : signal is std.standard.true;
  signal ep0_rx_valid_w_do : STD_LOGIC;
  attribute DEBUG of ep0_rx_valid_w_do : signal is "true";
  attribute MARK_DEBUG of ep0_rx_valid_w_do : signal is std.standard.true;
  signal ep2_tx_data_last_w_do : STD_LOGIC;
  attribute DEBUG of ep2_tx_data_last_w_do : signal is "true";
  attribute MARK_DEBUG of ep2_tx_data_last_w_do : signal is std.standard.true;
  signal ep2_tx_data_valid_w_do : STD_LOGIC;
  attribute DEBUG of ep2_tx_data_valid_w_do : signal is "true";
  attribute MARK_DEBUG of ep2_tx_data_valid_w_do : signal is std.standard.true;
  signal ep2_tx_data_w_do : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of ep2_tx_data_w_do : signal is "true";
  attribute MARK_DEBUG of ep2_tx_data_w_do : signal is std.standard.true;
  signal eventFIFODVReg_V : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of eventFIFODVReg_V : signal is "true";
  attribute MARK_DEBUG of eventFIFODVReg_V : signal is std.standard.true;
  signal eventStreamToConstEn_0_frameStream_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal eventStreamToConstEn_0_frameStream_TKEEP : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal eventStreamToConstEn_0_frameStream_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal eventStreamToConstEn_0_frameStream_TREADY : STD_LOGIC;
  signal eventStreamToConstEn_0_frameStream_TUSER : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal eventStreamToConstEn_0_frameStream_TVALID : STD_LOGIC;
  signal fifo_generator_0_almost_full : STD_LOGIC;
  attribute DEBUG of fifo_generator_0_almost_full : signal is "true";
  attribute MARK_DEBUG of fifo_generator_0_almost_full : signal is std.standard.true;
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of fifo_generator_0_dout : signal is "true";
  attribute MARK_DEBUG of fifo_generator_0_dout : signal is std.standard.true;
  signal fifo_generator_0_empty : STD_LOGIC;
  attribute DEBUG of fifo_generator_0_empty : signal is "true";
  attribute MARK_DEBUG of fifo_generator_0_empty : signal is std.standard.true;
  signal fifo_generator_0_prog_full : STD_LOGIC;
  signal glLastTSReg_V : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute DEBUG of glLastTSReg_V : signal is "true";
  attribute MARK_DEBUG of glLastTSReg_V : signal is std.standard.true;
  signal glLastTSReg_V_1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute DEBUG of glLastTSReg_V_1 : signal is "true";
  attribute MARK_DEBUG of glLastTSReg_V_1 : signal is std.standard.true;
  signal glLastTSReg_V_ap_vld : STD_LOGIC;
  attribute DEBUG of glLastTSReg_V_ap_vld : signal is "true";
  attribute MARK_DEBUG of glLastTSReg_V_ap_vld : signal is std.standard.true;
  signal glLastYReg_V : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of glLastYReg_V : signal is "true";
  attribute MARK_DEBUG of glLastYReg_V : signal is std.standard.true;
  signal glLastYReg_V_ap_vld : STD_LOGIC;
  attribute DEBUG of glLastYReg_V_ap_vld : signal is "true";
  attribute MARK_DEBUG of glLastYReg_V_ap_vld : signal is std.standard.true;
  signal nonMonTSDiffFlgReg_V : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of nonMonTSDiffFlgReg_V : signal is "true";
  attribute MARK_DEBUG of nonMonTSDiffFlgReg_V : signal is std.standard.true;
  signal nonMonTSDiffFlgReg_V_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of nonMonTSDiffFlgReg_V_1 : signal is "true";
  attribute MARK_DEBUG of nonMonTSDiffFlgReg_V_1 : signal is std.standard.true;
  signal nonMonTSDiffFlgReg_V_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of nonMonTSDiffFlgReg_V_2 : signal is "true";
  attribute MARK_DEBUG of nonMonTSDiffFlgReg_V_2 : signal is std.standard.true;
  signal nonMonTSDiffFlgReg_V_ap_vld : STD_LOGIC;
  attribute DEBUG of nonMonTSDiffFlgReg_V_ap_vld : signal is "true";
  attribute MARK_DEBUG of nonMonTSDiffFlgReg_V_ap_vld : signal is std.standard.true;
  signal nonMonTSDiffFlgReg_V_ap_vld_1 : STD_LOGIC;
  attribute DEBUG of nonMonTSDiffFlgReg_V_ap_vld_1 : signal is "true";
  attribute MARK_DEBUG of nonMonTSDiffFlgReg_V_ap_vld_1 : signal is std.standard.true;
  signal nonMonTSDiffFlgReg_V_ap_vld_2 : STD_LOGIC;
  attribute DEBUG of nonMonTSDiffFlgReg_V_ap_vld_2 : signal is "true";
  attribute MARK_DEBUG of nonMonTSDiffFlgReg_V_ap_vld_2 : signal is std.standard.true;
  signal o_RX_Count : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DEBUG of o_RX_Count : signal is "true";
  attribute MARK_DEBUG of o_RX_Count : signal is std.standard.true;
  signal outPktReceived_q_do : STD_LOGIC;
  attribute DEBUG of outPktReceived_q_do : signal is "true";
  attribute MARK_DEBUG of outPktReceived_q_do : signal is std.standard.true;
  signal proc_sys_reset_0_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_1_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK1 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M02_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M04_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps7_0_axi_periph_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M04_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r_RX_Bit_Count_do : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute DEBUG of r_RX_Bit_Count_do : signal is "true";
  attribute MARK_DEBUG of r_RX_Bit_Count_do : signal is std.standard.true;
  signal r_TX_Bit_Count_do : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute DEBUG of r_TX_Bit_Count_do : signal is "true";
  attribute MARK_DEBUG of r_TX_Bit_Count_do : signal is std.standard.true;
  signal rd_data_count : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute DEBUG of rd_data_count : signal is "true";
  attribute MARK_DEBUG of rd_data_count : signal is std.standard.true;
  signal readAXIBRAM_r_do : STD_LOGIC;
  attribute DEBUG of readAXIBRAM_r_do : signal is "true";
  attribute MARK_DEBUG of readAXIBRAM_r_do : signal is std.standard.true;
  signal rxDataComplete_o : STD_LOGIC;
  attribute DEBUG of rxDataComplete_o : signal is "true";
  attribute MARK_DEBUG of rxDataComplete_o : signal is std.standard.true;
  signal rx_strb_w_do : STD_LOGIC;
  attribute DEBUG of rx_strb_w_do : signal is "true";
  attribute MARK_DEBUG of rx_strb_w_do : signal is std.standard.true;
  signal setupPktReceived_q_do : STD_LOGIC;
  attribute DEBUG of setupPktReceived_q_do : signal is "true";
  attribute MARK_DEBUG of setupPktReceived_q_do : signal is std.standard.true;
  signal setup_resp_valid_delay_q_do : STD_LOGIC;
  attribute DEBUG of setup_resp_valid_delay_q_do : signal is "true";
  attribute MARK_DEBUG of setup_resp_valid_delay_q_do : signal is std.standard.true;
  signal setup_valid_q_do : STD_LOGIC;
  attribute DEBUG of setup_valid_q_do : signal is "true";
  attribute MARK_DEBUG of setup_valid_q_do : signal is std.standard.true;
  signal setup_wr_idx_q_do : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DEBUG of setup_wr_idx_q_do : signal is "true";
  attribute MARK_DEBUG of setup_wr_idx_q_do : signal is std.standard.true;
  signal sie_tx_state_q_o : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DEBUG of sie_tx_state_q_o : signal is "true";
  attribute MARK_DEBUG of sie_tx_state_q_o : signal is std.standard.true;
  signal skippedData_V : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of skippedData_V : signal is "true";
  attribute MARK_DEBUG of skippedData_V : signal is std.standard.true;
  signal skippedData_V_ap_vld : STD_LOGIC;
  attribute DEBUG of skippedData_V_ap_vld : signal is "true";
  attribute MARK_DEBUG of skippedData_V_ap_vld : signal is std.standard.true;
  signal state_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DEBUG of state_o : signal is "true";
  attribute MARK_DEBUG of state_o : signal is std.standard.true;
  signal state_r_do : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DEBUG of state_r_do : signal is "true";
  attribute MARK_DEBUG of state_r_do : signal is std.standard.true;
  signal status_stage_w_do : STD_LOGIC;
  attribute DEBUG of status_stage_w_do : signal is "true";
  attribute MARK_DEBUG of status_stage_w_do : signal is std.standard.true;
  signal testAERDVSSM_0_AERSMOutFifoData_DO : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of testAERDVSSM_0_AERSMOutFifoData_DO : signal is "true";
  attribute MARK_DEBUG of testAERDVSSM_0_AERSMOutFifoData_DO : signal is std.standard.true;
  signal testAERDVSSM_0_AERSMOutFifoData_DO2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of testAERDVSSM_0_AERSMOutFifoData_DO2 : signal is "true";
  attribute MARK_DEBUG of testAERDVSSM_0_AERSMOutFifoData_DO2 : signal is std.standard.true;
  signal testAERDVSSM_0_AERSMOutFifoWrite_SO1 : STD_LOGIC;
  attribute DEBUG of testAERDVSSM_0_AERSMOutFifoWrite_SO1 : signal is "true";
  attribute MARK_DEBUG of testAERDVSSM_0_AERSMOutFifoWrite_SO1 : signal is std.standard.true;
  signal testAERDVSSM_0_ChipBiasAddrSelect_SBO : STD_LOGIC;
  signal testAERDVSSM_0_ChipBiasBitIn_DO : STD_LOGIC;
  signal testAERDVSSM_0_ChipBiasClock_CBO : STD_LOGIC;
  signal testAERDVSSM_0_ChipBiasDiagSelect_SO : STD_LOGIC;
  signal testAERDVSSM_0_ChipBiasEnable_SO : STD_LOGIC;
  signal testAERDVSSM_0_ChipBiasLatch_SBO : STD_LOGIC;
  signal testAERDVSSM_0_DVSAERAck_SBO : STD_LOGIC;
  attribute DEBUG of testAERDVSSM_0_DVSAERAck_SBO : signal is "true";
  attribute MARK_DEBUG of testAERDVSSM_0_DVSAERAck_SBO : signal is std.standard.true;
  signal testAERDVSSM_0_DVSAERReset_SBO : STD_LOGIC;
  signal testAERDVSSM_0_IMUClock_CZO : STD_LOGIC;
  signal testAERDVSSM_0_IMUFSync_SO : STD_LOGIC;
  signal testAERDVSSM_0_SPIMISO_DZO : STD_LOGIC;
  signal testAERDVSSM_0_SyncOutClock_CO : STD_LOGIC;
  signal testAERDVSSM_0_SyncOutSignal_SO : STD_LOGIC;
  signal token_valid_w_do : STD_LOGIC;
  attribute DEBUG of token_valid_w_do : signal is "true";
  attribute MARK_DEBUG of token_valid_w_do : signal is std.standard.true;
  signal tsDiffFlgReg_V : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of tsDiffFlgReg_V : signal is "true";
  attribute MARK_DEBUG of tsDiffFlgReg_V : signal is std.standard.true;
  signal tsDiffFlgReg_V_ap_vld : STD_LOGIC;
  attribute DEBUG of tsDiffFlgReg_V_ap_vld : signal is "true";
  attribute MARK_DEBUG of tsDiffFlgReg_V_ap_vld : signal is std.standard.true;
  signal tsReg_V : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute DEBUG of tsReg_V : signal is "true";
  attribute MARK_DEBUG of tsReg_V : signal is std.standard.true;
  signal tsReg_V_1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute DEBUG of tsReg_V_1 : signal is "true";
  attribute MARK_DEBUG of tsReg_V_1 : signal is std.standard.true;
  signal tsReg_V_ap_vld : STD_LOGIC;
  attribute DEBUG of tsReg_V_ap_vld : signal is "true";
  attribute MARK_DEBUG of tsReg_V_ap_vld : signal is std.standard.true;
  signal tsReg_V_ap_vld_1 : STD_LOGIC;
  attribute DEBUG of tsReg_V_ap_vld_1 : signal is "true";
  attribute MARK_DEBUG of tsReg_V_ap_vld_1 : signal is std.standard.true;
  signal tx_sent_data_counter_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of tx_sent_data_counter_o : signal is "true";
  attribute MARK_DEBUG of tx_sent_data_counter_o : signal is std.standard.true;
  signal ulpi_clk60_i_0_1 : STD_LOGIC;
  signal ulpi_data_in_o_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of ulpi_data_in_o_d : signal is "true";
  attribute MARK_DEBUG of ulpi_data_in_o_d : signal is std.standard.true;
  signal ulpi_data_out_i_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of ulpi_data_out_i_d : signal is "true";
  attribute MARK_DEBUG of ulpi_data_out_i_d : signal is std.standard.true;
  signal ulpi_dir_i_0_1 : STD_LOGIC;
  attribute DEBUG of ulpi_dir_i_0_1 : signal is "true";
  attribute MARK_DEBUG of ulpi_dir_i_0_1 : signal is std.standard.true;
  signal ulpi_dir_q_do : STD_LOGIC;
  attribute DEBUG of ulpi_dir_q_do : signal is "true";
  attribute MARK_DEBUG of ulpi_dir_q_do : signal is std.standard.true;
  signal ulpi_nxt_i_0_1 : STD_LOGIC;
  attribute DEBUG of ulpi_nxt_i_0_1 : signal is "true";
  attribute MARK_DEBUG of ulpi_nxt_i_0_1 : signal is std.standard.true;
  signal ulpi_nxt_q_do : STD_LOGIC;
  attribute DEBUG of ulpi_nxt_q_do : signal is "true";
  attribute MARK_DEBUG of ulpi_nxt_q_do : signal is std.standard.true;
  signal ulpi_wrapper_0_ulpi_stp_o : STD_LOGIC;
  attribute DEBUG of ulpi_wrapper_0_ulpi_stp_o : signal is "true";
  attribute MARK_DEBUG of ulpi_wrapper_0_ulpi_stp_o : signal is std.standard.true;
  signal ulpi_wrapper_0_utmi_data_in_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of ulpi_wrapper_0_utmi_data_in_o : signal is "true";
  attribute MARK_DEBUG of ulpi_wrapper_0_utmi_data_in_o : signal is std.standard.true;
  signal ulpi_wrapper_0_utmi_linestate_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ulpi_wrapper_0_utmi_rxactive_o : STD_LOGIC;
  attribute DEBUG of ulpi_wrapper_0_utmi_rxactive_o : signal is "true";
  attribute MARK_DEBUG of ulpi_wrapper_0_utmi_rxactive_o : signal is std.standard.true;
  signal ulpi_wrapper_0_utmi_rxerror_o : STD_LOGIC;
  signal ulpi_wrapper_0_utmi_rxvalid_o : STD_LOGIC;
  attribute DEBUG of ulpi_wrapper_0_utmi_rxvalid_o : signal is "true";
  attribute MARK_DEBUG of ulpi_wrapper_0_utmi_rxvalid_o : signal is std.standard.true;
  signal ulpi_wrapper_0_utmi_txready_o : STD_LOGIC;
  attribute DEBUG of ulpi_wrapper_0_utmi_txready_o : signal is "true";
  attribute MARK_DEBUG of ulpi_wrapper_0_utmi_txready_o : signal is std.standard.true;
  signal usb_cdc_core_0_data_complete_o_do : STD_LOGIC;
  attribute DEBUG of usb_cdc_core_0_data_complete_o_do : signal is "true";
  attribute MARK_DEBUG of usb_cdc_core_0_data_complete_o_do : signal is std.standard.true;
  signal usb_cdc_core_0_ep0_rx_setup_w_do : STD_LOGIC;
  attribute DEBUG of usb_cdc_core_0_ep0_rx_setup_w_do : signal is "true";
  attribute MARK_DEBUG of usb_cdc_core_0_ep0_rx_setup_w_do : signal is std.standard.true;
  signal usb_cdc_core_0_inport_accept_o1 : STD_LOGIC;
  attribute DEBUG of usb_cdc_core_0_inport_accept_o1 : signal is "true";
  attribute MARK_DEBUG of usb_cdc_core_0_inport_accept_o1 : signal is std.standard.true;
  signal usb_cdc_core_0_inport_valid_q_do : STD_LOGIC;
  signal usb_cdc_core_0_outport_data_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of usb_cdc_core_0_outport_data_o : signal is "true";
  attribute MARK_DEBUG of usb_cdc_core_0_outport_data_o : signal is std.standard.true;
  signal usb_cdc_core_0_outport_valid_o : STD_LOGIC;
  attribute DEBUG of usb_cdc_core_0_outport_valid_o : signal is "true";
  attribute MARK_DEBUG of usb_cdc_core_0_outport_valid_o : signal is std.standard.true;
  signal usb_cdc_core_0_rx_out_do : STD_LOGIC;
  attribute DEBUG of usb_cdc_core_0_rx_out_do : signal is "true";
  attribute MARK_DEBUG of usb_cdc_core_0_rx_out_do : signal is std.standard.true;
  signal usb_cdc_core_0_utmi_data_out_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal usb_cdc_core_0_utmi_dmpulldown_o : STD_LOGIC;
  signal usb_cdc_core_0_utmi_dppulldown_o : STD_LOGIC;
  signal usb_cdc_core_0_utmi_op_mode_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal usb_cdc_core_0_utmi_termselect_o : STD_LOGIC;
  signal usb_cdc_core_0_utmi_txvalid_o : STD_LOGIC;
  signal usb_cdc_core_0_utmi_xcvrselect_o : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal usb_reset_counter_q_do : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of usb_reset_counter_q_do : signal is "true";
  attribute MARK_DEBUG of usb_reset_counter_q_do : signal is std.standard.true;
  signal usb_reset_w_do : STD_LOGIC;
  attribute DEBUG of usb_reset_w_do : signal is "true";
  attribute MARK_DEBUG of usb_reset_w_do : signal is std.standard.true;
  signal usb_rst_time_do : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute DEBUG of usb_rst_time_do : signal is "true";
  attribute MARK_DEBUG of usb_rst_time_do : signal is std.standard.true;
  signal usbf_ep_data_bit_r_do : STD_LOGIC;
  attribute DEBUG of usbf_ep_data_bit_r_do : signal is "true";
  attribute MARK_DEBUG of usbf_ep_data_bit_r_do : signal is std.standard.true;
  signal usbf_new_data_bit_r_do : STD_LOGIC;
  attribute DEBUG of usbf_new_data_bit_r_do : signal is "true";
  attribute MARK_DEBUG of usbf_new_data_bit_r_do : signal is std.standard.true;
  signal usbf_state_q_do : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DEBUG of usbf_state_q_do : signal is "true";
  attribute MARK_DEBUG of usbf_state_q_do : signal is std.standard.true;
  signal usbf_tx_pid_q_do : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of usbf_tx_pid_q_do : signal is "true";
  attribute MARK_DEBUG of usbf_tx_pid_q_do : signal is std.standard.true;
  signal usbf_tx_valid_q_do : STD_LOGIC;
  attribute DEBUG of usbf_tx_valid_q_do : signal is "true";
  attribute MARK_DEBUG of usbf_tx_valid_q_do : signal is std.standard.true;
  signal usbfrx_crc_byte_w_do : STD_LOGIC;
  attribute DEBUG of usbfrx_crc_byte_w_do : signal is "true";
  attribute MARK_DEBUG of usbfrx_crc_byte_w_do : signal is std.standard.true;
  signal usbfrx_data_ready_w_do : STD_LOGIC;
  attribute DEBUG of usbfrx_data_ready_w_do : signal is "true";
  attribute MARK_DEBUG of usbfrx_data_ready_w_do : signal is std.standard.true;
  signal usbfrx_data_w_do : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of usbfrx_data_w_do : signal is "true";
  attribute MARK_DEBUG of usbfrx_data_w_do : signal is std.standard.true;
  signal usbfrx_rx_active_w_do : STD_LOGIC;
  attribute DEBUG of usbfrx_rx_active_w_do : signal is "true";
  attribute MARK_DEBUG of usbfrx_rx_active_w_do : signal is std.standard.true;
  signal usbfrx_shift_en_w_do : STD_LOGIC;
  attribute DEBUG of usbfrx_shift_en_w_do : signal is "true";
  attribute MARK_DEBUG of usbfrx_shift_en_w_do : signal is std.standard.true;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of util_vector_logic_1_Res : signal is "true";
  attribute MARK_DEBUG of util_vector_logic_1_Res : signal is std.standard.true;
  signal util_vector_logic_2_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal utmi_data_q_do : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEBUG of utmi_data_q_do : signal is "true";
  attribute MARK_DEBUG of utmi_data_q_do : signal is std.standard.true;
  signal v_axi4s_vid_out_0_vid_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal v_axi4s_vid_out_0_vid_hsync : STD_LOGIC;
  signal v_axi4s_vid_out_0_vid_vsync : STD_LOGIC;
  signal v_axi4s_vid_out_0_vtg_ce : STD_LOGIC;
  signal v_tc_0_vtiming_out_ACTIVE_VIDEO : STD_LOGIC;
  signal v_tc_0_vtiming_out_HBLANK : STD_LOGIC;
  signal v_tc_0_vtiming_out_HSYNC : STD_LOGIC;
  signal v_tc_0_vtiming_out_VBLANK : STD_LOGIC;
  signal v_tc_0_vtiming_out_VSYNC : STD_LOGIC;
  signal w_Master_Ready_do : STD_LOGIC;
  attribute DEBUG of w_Master_Ready_do : signal is "true";
  attribute MARK_DEBUG of w_Master_Ready_do : signal is std.standard.true;
  signal wrOUTIndex_q_do : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DEBUG of wrOUTIndex_q_do : signal is "true";
  attribute MARK_DEBUG of wrOUTIndex_q_do : signal is std.standard.true;
  signal wrSetupIndex_q_do : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute DEBUG of wrSetupIndex_q_do : signal is "true";
  attribute MARK_DEBUG of wrSetupIndex_q_do : signal is std.standard.true;
  signal wr_data_count : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute DEBUG of wr_data_count : signal is "true";
  attribute MARK_DEBUG of wr_data_count : signal is std.standard.true;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlcons_data_0x5a5a_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlcons_valid_high_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_ONE_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_5_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal yDiffFlgReg_V : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute DEBUG of yDiffFlgReg_V : signal is "true";
  attribute MARK_DEBUG of yDiffFlgReg_V : signal is std.standard.true;
  signal yDiffFlgReg_V_ap_vld : STD_LOGIC;
  attribute DEBUG of yDiffFlgReg_V_ap_vld : signal is "true";
  attribute MARK_DEBUG of yDiffFlgReg_V_ap_vld : signal is std.standard.true;
  signal yReg_V : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG of yReg_V : signal is "true";
  attribute MARK_DEBUG of yReg_V : signal is std.standard.true;
  signal yReg_V_ap_vld : STD_LOGIC;
  attribute DEBUG of yReg_V_ap_vld : signal is "true";
  attribute MARK_DEBUG of yReg_V_ap_vld : signal is std.standard.true;
  signal NLW_EVFastCornerStream_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_EVFastCornerStream_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_EVFastCornerStream_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_EVFastCornerStream_0_polStreamIn_V_V_TREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_EVFastCornerStream_0_tsStreamIn_V_V_TREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_EVFastCornerStream_0_xStreamIn_V_V_TREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_EVFastCornerStream_0_yStreamIn_V_V_TREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_EVFastCornerStream_0_tsStreamIn_V_V_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 16 );
  signal NLW_EVMUXDataToXYTSStream_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_EVMUXDataToXYTSStream_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_EVMUXDataToXYTSStream_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_EVMUXDataToXYTSStream_0_dataReg_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_EVMUXDataToXYTSStream_0_polRegReg_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_EVMUXDataToXYTSStream_0_rawDataStreamOut_V_V_TVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_EVMUXDataToXYTSStream_0_tsRegReg_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_EVMUXDataToXYTSStream_0_tsWrapRegReg_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_EVMUXDataToXYTSStream_0_xRegReg_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_EVMUXDataToXYTSStream_0_yRegReg_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_EVMUXDataToXYTSStream_0_dataReg_V_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_EVMUXDataToXYTSStream_0_polRegReg_V_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_EVMUXDataToXYTSStream_0_rawDataStreamOut_V_V_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_EVMUXDataToXYTSStream_0_tsRegReg_V_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_EVMUXDataToXYTSStream_0_tsWrapRegReg_V_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_EVMUXDataToXYTSStream_0_xRegReg_V_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_EVMUXDataToXYTSStream_0_yRegReg_V_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_RawStreamToFIFO_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_RawStreamToFIFO_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_RawStreamToFIFO_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_XYTSStreamToRawStream_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_XYTSStreamToRawStream_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_XYTSStreamToRawStream_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_vdma_0_mm2s_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_vdma_0_s2mm_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_vdma_0_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_vdma_0_mm2s_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_1_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_1_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_1_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_c_addsub_as_invert_and_delay1_S_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_checkEvUSBStream_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_checkEvUSBStream_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_checkEvUSBStream_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_convertToStream_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_convertToStream_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_convertToStream_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_count_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_hCnt_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_polReg_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_regX_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_regY_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_skipFlgOutput_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_tsReg_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_vCnt_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_vgaEn_V_ap_vld_UNCONNECTED : STD_LOGIC;
  signal NLW_eventStreamToConstEn_0_count_V_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_eventStreamToConstEn_0_frameStream_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_eventStreamToConstEn_0_frameStream_TID_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_eventStreamToConstEn_0_frameStream_TSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_eventStreamToConstEn_0_hCnt_V_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_eventStreamToConstEn_0_polReg_V_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_eventStreamToConstEn_0_regX_V_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_eventStreamToConstEn_0_regY_V_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_eventStreamToConstEn_0_skipFlgOutput_V_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_eventStreamToConstEn_0_tsReg_V_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_eventStreamToConstEn_0_vCnt_V_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_eventStreamToConstEn_0_vgaEn_V_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_generator_0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_FCLK_CLK2_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_FCLK_CLK3_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_I2C1_SCL_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_I2C1_SCL_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_I2C1_SDA_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_I2C1_SDA_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MISO_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MISO_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MOSI_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MOSI_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SCLK_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SCLK_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS1_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS2_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB1_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_USB1_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ulpi_wrapper_0_mode_complete_o_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_mode_update_o_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_otg_complete_o_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_otg_update_o_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_termselect_o_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_turnaround_d_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_tx_delay_complete_o_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_tx_rd_idx_q_d_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_tx_wr_idx_q_d_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_ulpi_data_dir_d_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_ulpi_reg_read_flag_d_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_utmi_tx_accept_o_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_utmi_tx_ready_o_UNCONNECTED : STD_LOGIC;
  signal NLW_ulpi_wrapper_0_opmode_o_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ulpi_wrapper_0_xcvrselect_o_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_usb_cdc_core_0_ctrl_send_accept_w_do_UNCONNECTED : STD_LOGIC;
  signal NLW_usb_cdc_core_0_ctrl_txstall_q_do_UNCONNECTED : STD_LOGIC;
  signal NLW_usb_cdc_core_0_ep2_tx_data_accept_w_do_UNCONNECTED : STD_LOGIC;
  signal NLW_usb_cdc_core_0_rx_last_w_do_UNCONNECTED : STD_LOGIC;
  signal NLW_usb_cdc_core_0_setup_frame_q_do_UNCONNECTED : STD_LOGIC;
  signal NLW_usb_cdc_core_0_setup_token_valid_intr_o_UNCONNECTED : STD_LOGIC;
  signal NLW_usb_cdc_core_0_vendorReqRecived_o_UNCONNECTED : STD_LOGIC;
  signal NLW_usb_cdc_core_0_axi_bram_w_data_o_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_usb_cdc_core_0_bRequest_w_do_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_usb_cdc_core_0_current_addr_i_do_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_usb_cdc_core_0_current_token_debug_counter_q_do_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_usb_cdc_core_0_debug_counter_q_do_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_usb_cdc_core_0_desc_addr_q_do_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_usb_cdc_core_0_reg_dev_addr_i_do_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_usb_cdc_core_0_setup_valid_conter_q_o_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_usb_cdc_core_0_token_dev_w_do_UNCONNECTED : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_usb_cdc_core_0_token_ep_w_do_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_usb_cdc_core_0_token_valid_cnt_q_do_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_usb_cdc_core_0_token_valid_counter_q_do_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_usb_cdc_core_0_wValue_w_do_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_util_vector_logic_3_Res_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_v_axi4s_vid_out_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_active_video_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_vid_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_axi4s_vid_out_0_status_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_v_tc_0_fsync_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xlslice_2_Dout_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xlslice_3_Dout_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
  ChipBiasAddrSelect_SBO_0 <= testAERDVSSM_0_ChipBiasAddrSelect_SBO;
  ChipBiasBitIn_DO_0 <= testAERDVSSM_0_ChipBiasBitIn_DO;
  ChipBiasClock_CBO_0 <= testAERDVSSM_0_ChipBiasClock_CBO;
  ChipBiasDiagSelect_SO_0 <= testAERDVSSM_0_ChipBiasDiagSelect_SO;
  ChipBiasEnable_SO_0 <= testAERDVSSM_0_ChipBiasEnable_SO;
  ChipBiasLatch_SBO_0 <= testAERDVSSM_0_ChipBiasLatch_SBO;
  DVSAERAck_SBO_0 <= testAERDVSSM_0_DVSAERAck_SBO;
  DVSAERData_AI_0_1(10 downto 0) <= DVSAERData_AI_0(10 downto 0);
  DVSAERReq_ABI_0_1 <= DVSAERReq_ABI_0;
  DVSAERReset_SBO_0 <= testAERDVSSM_0_DVSAERReset_SBO;
  IMUClock_CZO_0 <= testAERDVSSM_0_IMUClock_CZO;
  IMUFSync_SO_0 <= testAERDVSSM_0_IMUFSync_SO;
  IMUInterrupt_AI_0_1 <= IMUInterrupt_AI_0;
  SyncInClock_AI_0_1 <= SyncInClock_AI_0;
  SyncInSignal1_AI_0_1 <= SyncInSignal1_AI_0;
  SyncInSignal2_AI_0_1 <= SyncInSignal2_AI_0;
  SyncInSignal_AI_0_1 <= SyncInSignal_AI_0;
  SyncOutClock_CO_0 <= testAERDVSSM_0_SyncOutClock_CO;
  SyncOutSignal_SO_0 <= testAERDVSSM_0_SyncOutSignal_SO;
  led_0(5 downto 0) <= LEDShifter_0_led(5 downto 0);
  ulpi_clk60_i_0_1 <= ulpi_clk60_i_0;
  ulpi_dir_i_0_1 <= ulpi_dir_i_0;
  ulpi_nxt_i_0_1 <= ulpi_nxt_i_0;
  ulpi_stp_o_0 <= ulpi_wrapper_0_ulpi_stp_o;
  vid_data(23 downto 0) <= v_axi4s_vid_out_0_vid_data(23 downto 0);
  vid_hsync <= v_axi4s_vid_out_0_vid_hsync;
  vid_vsync <= v_axi4s_vid_out_0_vid_vsync;
EVFastCornerStream_0: component brd_EVFastCornerStream_0_0
     port map (
      ap_clk => processing_system7_0_FCLK_CLK0,
      ap_done => NLW_EVFastCornerStream_0_ap_done_UNCONNECTED,
      ap_idle => NLW_EVFastCornerStream_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_EVFastCornerStream_0_ap_ready_UNCONNECTED,
      ap_rst_n => proc_sys_reset_0_peripheral_aresetn(0),
      ap_start => const_VCC_dout(0),
      pixelDataStream_V_V_TDATA(7 downto 0) => EVABMOFStream_0_pixelDataStream_V_V_TDATA(7 downto 0),
      pixelDataStream_V_V_TREADY => EVABMOFStream_0_pixelDataStream_V_V_TREADY,
      pixelDataStream_V_V_TVALID => EVABMOFStream_0_pixelDataStream_V_V_TVALID,
      polStreamIn_V_V_TDATA(7 downto 0) => xlcons_data_0x5a5a_dout(7 downto 0),
      polStreamIn_V_V_TREADY => NLW_EVFastCornerStream_0_polStreamIn_V_V_TREADY_UNCONNECTED,
      polStreamIn_V_V_TVALID => xlcons_valid_high_dout(0),
      polStreamOut_V_V_TDATA(7 downto 0) => EVABMOFStream_0_polStreamOut_V_V_TDATA(7 downto 0),
      polStreamOut_V_V_TREADY => EVABMOFStream_0_polStreamOut_V_V_TREADY,
      polStreamOut_V_V_TVALID => EVABMOFStream_0_polStreamOut_V_V_TVALID,
      s_axi_config_ARADDR(5 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(5 downto 0),
      s_axi_config_ARREADY => ps7_0_axi_periph_M03_AXI_ARREADY,
      s_axi_config_ARVALID => ps7_0_axi_periph_M03_AXI_ARVALID,
      s_axi_config_AWADDR(5 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(5 downto 0),
      s_axi_config_AWREADY => ps7_0_axi_periph_M03_AXI_AWREADY,
      s_axi_config_AWVALID => ps7_0_axi_periph_M03_AXI_AWVALID,
      s_axi_config_BREADY => ps7_0_axi_periph_M03_AXI_BREADY,
      s_axi_config_BRESP(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s_axi_config_BVALID => ps7_0_axi_periph_M03_AXI_BVALID,
      s_axi_config_RDATA(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s_axi_config_RREADY => ps7_0_axi_periph_M03_AXI_RREADY,
      s_axi_config_RRESP(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s_axi_config_RVALID => ps7_0_axi_periph_M03_AXI_RVALID,
      s_axi_config_WDATA(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s_axi_config_WREADY => ps7_0_axi_periph_M03_AXI_WREADY,
      s_axi_config_WSTRB(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s_axi_config_WVALID => ps7_0_axi_periph_M03_AXI_WVALID,
      tsStreamIn_V_V_TDATA(63 downto 16) => NLW_EVFastCornerStream_0_tsStreamIn_V_V_TDATA_UNCONNECTED(63 downto 16),
      tsStreamIn_V_V_TDATA(15 downto 0) => xlcons_data_0x5a5a_dout(15 downto 0),
      tsStreamIn_V_V_TREADY => NLW_EVFastCornerStream_0_tsStreamIn_V_V_TREADY_UNCONNECTED,
      tsStreamIn_V_V_TVALID => xlcons_valid_high_dout(0),
      tsStreamOut_V_V_TDATA(63 downto 0) => EVABMOFStream_0_tsStreamOut_V_V_TDATA(63 downto 0),
      tsStreamOut_V_V_TREADY => EVABMOFStream_0_tsStreamOut_V_V_TREADY,
      tsStreamOut_V_V_TVALID => EVABMOFStream_0_tsStreamOut_V_V_TVALID,
      xStreamIn_V_V_TDATA(15 downto 0) => xlcons_data_0x5a5a_dout(15 downto 0),
      xStreamIn_V_V_TREADY => NLW_EVFastCornerStream_0_xStreamIn_V_V_TREADY_UNCONNECTED,
      xStreamIn_V_V_TVALID => xlcons_valid_high_dout(0),
      xStreamOut_V_V_TDATA(15 downto 0) => EVABMOFStream_0_xStreamOut_V_V_TDATA(15 downto 0),
      xStreamOut_V_V_TREADY => EVABMOFStream_0_xStreamOut_V_V_TREADY,
      xStreamOut_V_V_TVALID => EVABMOFStream_0_xStreamOut_V_V_TVALID,
      yStreamIn_V_V_TDATA(15 downto 0) => xlcons_data_0x5a5a_dout(15 downto 0),
      yStreamIn_V_V_TREADY => NLW_EVFastCornerStream_0_yStreamIn_V_V_TREADY_UNCONNECTED,
      yStreamIn_V_V_TVALID => xlcons_valid_high_dout(0),
      yStreamOut_V_V_TDATA(15 downto 0) => EVABMOFStream_0_yStreamOut_V_V_TDATA(15 downto 0),
      yStreamOut_V_V_TREADY => EVABMOFStream_0_yStreamOut_V_V_TREADY,
      yStreamOut_V_V_TVALID => EVABMOFStream_0_yStreamOut_V_V_TVALID
    );
EVMUXDataToXYTSStream_0: component brd_EVMUXDataToXYTSStream_0_0
     port map (
      ap_clk => processing_system7_0_FCLK_CLK0,
      ap_done => NLW_EVMUXDataToXYTSStream_0_ap_done_UNCONNECTED,
      ap_idle => NLW_EVMUXDataToXYTSStream_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_EVMUXDataToXYTSStream_0_ap_ready_UNCONNECTED,
      ap_rst_n => proc_sys_reset_0_peripheral_aresetn(0),
      ap_start => const_VCC_dout(0),
      dataReg_V(15 downto 0) => NLW_EVMUXDataToXYTSStream_0_dataReg_V_UNCONNECTED(15 downto 0),
      dataReg_V_ap_vld => NLW_EVMUXDataToXYTSStream_0_dataReg_V_ap_vld_UNCONNECTED,
      eventFIFODataValid_V(0) => testAERDVSSM_0_AERSMOutFifoWrite_SO1,
      eventFIFOIn_V(15 downto 0) => testAERDVSSM_0_AERSMOutFifoData_DO2(15 downto 0),
      polRegReg_V(0) => NLW_EVMUXDataToXYTSStream_0_polRegReg_V_UNCONNECTED(0),
      polRegReg_V_ap_vld => NLW_EVMUXDataToXYTSStream_0_polRegReg_V_ap_vld_UNCONNECTED,
      polStreamOut_V_V_TDATA(7 downto 0) => EVMUXDataToXYTSStream_0_polStreamOut_V_V_TDATA(7 downto 0),
      polStreamOut_V_V_TREADY => EVMUXDataToXYTSStream_0_polStreamOut_V_V_TREADY,
      polStreamOut_V_V_TVALID => EVMUXDataToXYTSStream_0_polStreamOut_V_V_TVALID,
      rawDataStreamOut_V_V_TDATA(15 downto 0) => NLW_EVMUXDataToXYTSStream_0_rawDataStreamOut_V_V_TDATA_UNCONNECTED(15 downto 0),
      rawDataStreamOut_V_V_TREADY => '1',
      rawDataStreamOut_V_V_TVALID => NLW_EVMUXDataToXYTSStream_0_rawDataStreamOut_V_V_TVALID_UNCONNECTED,
      s_axi_config_ARADDR(5 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(5 downto 0),
      s_axi_config_ARREADY => ps7_0_axi_periph_M02_AXI_ARREADY,
      s_axi_config_ARVALID => ps7_0_axi_periph_M02_AXI_ARVALID,
      s_axi_config_AWADDR(5 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(5 downto 0),
      s_axi_config_AWREADY => ps7_0_axi_periph_M02_AXI_AWREADY,
      s_axi_config_AWVALID => ps7_0_axi_periph_M02_AXI_AWVALID,
      s_axi_config_BREADY => ps7_0_axi_periph_M02_AXI_BREADY,
      s_axi_config_BRESP(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      s_axi_config_BVALID => ps7_0_axi_periph_M02_AXI_BVALID,
      s_axi_config_RDATA(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      s_axi_config_RREADY => ps7_0_axi_periph_M02_AXI_RREADY,
      s_axi_config_RRESP(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      s_axi_config_RVALID => ps7_0_axi_periph_M02_AXI_RVALID,
      s_axi_config_WDATA(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      s_axi_config_WREADY => ps7_0_axi_periph_M02_AXI_WREADY,
      s_axi_config_WSTRB(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      s_axi_config_WVALID => ps7_0_axi_periph_M02_AXI_WVALID,
      tsRegReg_V(63 downto 0) => NLW_EVMUXDataToXYTSStream_0_tsRegReg_V_UNCONNECTED(63 downto 0),
      tsRegReg_V_ap_vld => NLW_EVMUXDataToXYTSStream_0_tsRegReg_V_ap_vld_UNCONNECTED,
      tsStreamOut_V_V_TDATA(63 downto 0) => EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TDATA(63 downto 0),
      tsStreamOut_V_V_TREADY => EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TREADY,
      tsStreamOut_V_V_TVALID => EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TVALID,
      tsWrapRegReg_V(47 downto 0) => NLW_EVMUXDataToXYTSStream_0_tsWrapRegReg_V_UNCONNECTED(47 downto 0),
      tsWrapRegReg_V_ap_vld => NLW_EVMUXDataToXYTSStream_0_tsWrapRegReg_V_ap_vld_UNCONNECTED,
      xRegReg_V(15 downto 0) => NLW_EVMUXDataToXYTSStream_0_xRegReg_V_UNCONNECTED(15 downto 0),
      xRegReg_V_ap_vld => NLW_EVMUXDataToXYTSStream_0_xRegReg_V_ap_vld_UNCONNECTED,
      xStreamOut_V_V_TDATA(15 downto 0) => EVMUXDataToXYTSStream_0_xStreamOut_V_V_TDATA(15 downto 0),
      xStreamOut_V_V_TREADY => EVMUXDataToXYTSStream_0_xStreamOut_V_V_TREADY,
      xStreamOut_V_V_TVALID => EVMUXDataToXYTSStream_0_xStreamOut_V_V_TVALID,
      yRegReg_V(15 downto 0) => NLW_EVMUXDataToXYTSStream_0_yRegReg_V_UNCONNECTED(15 downto 0),
      yRegReg_V_ap_vld => NLW_EVMUXDataToXYTSStream_0_yRegReg_V_ap_vld_UNCONNECTED,
      yStreamOut_V_V_TDATA(15 downto 0) => EVMUXDataToXYTSStream_0_yStreamOut_V_V_TDATA(15 downto 0),
      yStreamOut_V_V_TREADY => EVMUXDataToXYTSStream_0_yStreamOut_V_V_TREADY,
      yStreamOut_V_V_TVALID => EVMUXDataToXYTSStream_0_yStreamOut_V_V_TVALID
    );
LEDShifter_0: component brd_LEDShifter_0_0
     port map (
      clk => processing_system7_0_FCLK_CLK1,
      led(5 downto 0) => LEDShifter_0_led(5 downto 0),
      rstn => xlconstant_1_dout(0)
    );
MyDFFSynchronizer_0: component brd_MyDFFSynchronizer_0_0
     port map (
      Reset_RI => util_vector_logic_0_Res(0),
      SignalToSync_SI(0) => nonMonTSDiffFlgReg_V_2(0),
      SyncClock_CI => processing_system7_0_FCLK_CLK0,
      SyncedSignal_SO(0) => MyDFFSynchronizer_0_SyncedSignal_SO(0)
    );
MyDFFSynchronizer_1: component brd_MyDFFSynchronizer_0_1
     port map (
      Reset_RI => util_vector_logic_0_Res(0),
      SignalToSync_SI(0) => nonMonTSDiffFlgReg_V_ap_vld_2,
      SyncClock_CI => processing_system7_0_FCLK_CLK0,
      SyncedSignal_SO(0) => MyDFFSynchronizer_1_SyncedSignal_SO(0)
    );
RawStreamToFIFO_0: component brd_RawStreamToFIFO_0_0
     port map (
      ap_clk => processing_system7_0_FCLK_CLK0,
      ap_done => NLW_RawStreamToFIFO_0_ap_done_UNCONNECTED,
      ap_idle => NLW_RawStreamToFIFO_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_RawStreamToFIFO_0_ap_ready_UNCONNECTED,
      ap_rst_n => proc_sys_reset_0_peripheral_aresetn(0),
      ap_start => const_VCC_dout(0),
      fifoIFInFull_n_V(0) => util_vector_logic_1_Res(0),
      fifoIFOutData_V(15 downto 0) => StreamToFIFO_0_fifoDataOut_V_din(15 downto 0),
      fifoIFOutData_V_ap_vld => StreamToFIFO_0_fifoDataOut_V_write,
      nonMonTSDiffFlgReg_V(0) => nonMonTSDiffFlgReg_V_1(0),
      nonMonTSDiffFlgReg_V_ap_vld => nonMonTSDiffFlgReg_V_ap_vld_1,
      skippedData_V(15 downto 0) => skippedData_V(15 downto 0),
      skippedData_V_ap_vld => skippedData_V_ap_vld,
      streamIn_V_V_TDATA(15 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(15 downto 0),
      streamIn_V_V_TREADY => axis_data_fifo_0_M_AXIS_TREADY,
      streamIn_V_V_TVALID => axis_data_fifo_0_M_AXIS_TVALID
    );
SPI_Master_With_Sing_0: component brd_SPI_Master_With_Sing_0_2
     port map (
      i_Clk => ulpi_clk60_i_0_1,
      i_Rst_L => xlconstant_1_dout(0),
      i_SPI_MISO => testAERDVSSM_0_SPIMISO_DZO,
      i_TX_Byte(47 downto 0) => USBFifoToDVSSPI_0_outputData_o(47 downto 0),
      i_TX_Count(2 downto 0) => xlconstant_0_dout(2 downto 0),
      i_TX_DV => USBFifoToDVSSPI_0_outputDataValid_o,
      o_RX_Byte(47 downto 0) => SPI_Master_With_Sing_0_o_RX_Byte(47 downto 0),
      o_RX_Count(1 downto 0) => o_RX_Count(1 downto 0),
      o_RX_DV => SPI_Master_With_Sing_0_o_RX_DV,
      o_SPI_CS_n => SPI_Master_With_Sing_0_o_SPI_CS_n,
      o_SPI_Clk => SPI_Master_With_Sing_0_o_SPI_Clk,
      o_SPI_MOSI => SPI_Master_With_Sing_0_o_SPI_MOSI,
      o_TX_Ready => SPI_Master_With_Sing_0_o_TX_Ready,
      r_RX_Bit_Count_do(5 downto 0) => r_RX_Bit_Count_do(5 downto 0),
      r_TX_Bit_Count_do(5 downto 0) => r_TX_Bit_Count_do(5 downto 0),
      w_Master_Ready_do => w_Master_Ready_do
    );
USBFifoToDVSSPI_0: component brd_USBFifoToDVSSPI_0_0
     port map (
      clk_i => ulpi_clk60_i_0_1,
      dataRecEnd_i => usb_cdc_core_0_data_complete_o_do,
      dataSPIToSendPrepared_w_do => dataSPIToSendPrepared_w_do,
      dvsRXByte_i(47 downto 0) => SPI_Master_With_Sing_0_o_RX_Byte(47 downto 0),
      dvsRXDataValid_i => SPI_Master_With_Sing_0_o_RX_DV,
      dvs_resp_addr_i(1 downto 0) => c_counter_binary_0_Q(1 downto 0),
      dvs_resp_data_o(7 downto 0) => dvs_resp_data_o(7 downto 0),
      inputDataValid_i => usb_cdc_core_0_outport_valid_o,
      inputData_i(7 downto 0) => usb_cdc_core_0_outport_data_o(7 downto 0),
      outDataRecStart_i => usb_cdc_core_0_rx_out_do,
      outPktReceived_q_do => outPktReceived_q_do,
      outputDataValid_o => USBFifoToDVSSPI_0_outputDataValid_o,
      outputData_o(47 downto 0) => USBFifoToDVSSPI_0_outputData_o(47 downto 0),
      rst_i => util_vector_logic_0_Res(0),
      rxDataComplete_o => rxDataComplete_o,
      setupDataRecStart_i => usb_cdc_core_0_ep0_rx_setup_w_do,
      setupPktReceived_q_do => setupPktReceived_q_do,
      spiReady_i => SPI_Master_With_Sing_0_o_TX_Ready,
      wrOUTIndex_q_do(2 downto 0) => wrOUTIndex_q_do(2 downto 0),
      wrSetupIndex_q_do(3 downto 0) => wrSetupIndex_q_do(3 downto 0)
    );
XYTSStreamToRawStream_0: component brd_XYTSStreamToRawStream_0_0
     port map (
      ap_clk => processing_system7_0_FCLK_CLK0,
      ap_done => NLW_XYTSStreamToRawStream_0_ap_done_UNCONNECTED,
      ap_idle => NLW_XYTSStreamToRawStream_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_XYTSStreamToRawStream_0_ap_ready_UNCONNECTED,
      ap_rst_n => proc_sys_reset_0_peripheral_aresetn(0),
      ap_start => const_VCC_dout(0),
      glLastTSReg_V(63 downto 0) => glLastTSReg_V(63 downto 0),
      glLastTSReg_V_ap_vld => glLastTSReg_V_ap_vld,
      glLastYReg_V(15 downto 0) => glLastYReg_V(15 downto 0),
      glLastYReg_V_ap_vld => glLastYReg_V_ap_vld,
      nonMonTSDiffFlgReg_V(0) => nonMonTSDiffFlgReg_V(0),
      nonMonTSDiffFlgReg_V_ap_vld => nonMonTSDiffFlgReg_V_ap_vld,
      polStreamIn_V_V_TDATA(7 downto 0) => EVMUXDataToXYTSStream_0_polStreamOut_V_V_TDATA(7 downto 0),
      polStreamIn_V_V_TREADY => EVMUXDataToXYTSStream_0_polStreamOut_V_V_TREADY,
      polStreamIn_V_V_TVALID => EVMUXDataToXYTSStream_0_polStreamOut_V_V_TVALID,
      streamOut_V_V_TDATA(15 downto 0) => XYTSStreamToRawStream_0_streamOut_V_V_TDATA(15 downto 0),
      streamOut_V_V_TREADY => XYTSStreamToRawStream_0_streamOut_V_V_TREADY,
      streamOut_V_V_TVALID => XYTSStreamToRawStream_0_streamOut_V_V_TVALID,
      tsDiffFlgReg_V(0) => tsDiffFlgReg_V(0),
      tsDiffFlgReg_V_ap_vld => tsDiffFlgReg_V_ap_vld,
      tsReg_V(63 downto 0) => tsReg_V(63 downto 0),
      tsReg_V_ap_vld => tsReg_V_ap_vld,
      tsStreamIn_V_V_TDATA(63 downto 0) => EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TDATA(63 downto 0),
      tsStreamIn_V_V_TREADY => EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TREADY,
      tsStreamIn_V_V_TVALID => EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TVALID,
      xStreamIn_V_V_TDATA(15 downto 0) => EVMUXDataToXYTSStream_0_xStreamOut_V_V_TDATA(15 downto 0),
      xStreamIn_V_V_TREADY => EVMUXDataToXYTSStream_0_xStreamOut_V_V_TREADY,
      xStreamIn_V_V_TVALID => EVMUXDataToXYTSStream_0_xStreamOut_V_V_TVALID,
      yDiffFlgReg_V(0) => yDiffFlgReg_V(0),
      yDiffFlgReg_V_ap_vld => yDiffFlgReg_V_ap_vld,
      yReg_V(15 downto 0) => yReg_V(15 downto 0),
      yReg_V_ap_vld => yReg_V_ap_vld,
      yStreamIn_V_V_TDATA(15 downto 0) => EVMUXDataToXYTSStream_0_yStreamOut_V_V_TDATA(15 downto 0),
      yStreamIn_V_V_TREADY => EVMUXDataToXYTSStream_0_yStreamOut_V_V_TREADY,
      yStreamIn_V_V_TVALID => EVMUXDataToXYTSStream_0_yStreamOut_V_V_TVALID
    );
axi_gpio_0: component brd_axi_gpio_0_0
     port map (
      gpio_io_o(31 downto 0) => axi_gpio_0_gpio_io_o(31 downto 0),
      ip2intc_irpt => axi_gpio_0_ip2intc_irpt,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID(0),
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID(0),
      s_axi_bready => ps7_0_axi_periph_M00_AXI_BREADY(0),
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M00_AXI_RREADY(0),
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M00_AXI_WVALID(0)
    );
axi_smc: component brd_axi_smc_0
     port map (
      M00_AXI_araddr(31 downto 0) => axi_smc_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(3 downto 0) => axi_smc_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => axi_smc_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_smc_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_smc_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_smc_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(3 downto 0) => axi_smc_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => axi_smc_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_rdata(63 downto 0) => axi_smc_M00_AXI_RDATA(63 downto 0),
      M00_AXI_rlast => axi_smc_M00_AXI_RLAST,
      M00_AXI_rready => axi_smc_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_smc_M00_AXI_RVALID,
      M00_AXI_wdata(63 downto 0) => axi_smc_M00_AXI_WDATA(63 downto 0),
      M00_AXI_wlast => axi_smc_M00_AXI_WLAST,
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(7 downto 0) => axi_smc_M00_AXI_WSTRB(7 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => axi_vdma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_vdma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_vdma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_vdma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => '0',
      S00_AXI_arprot(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => B"0000",
      S00_AXI_arready => axi_vdma_0_M_AXI_MM2S_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_vdma_0_M_AXI_MM2S_ARVALID,
      S00_AXI_rdata(63 downto 0) => axi_vdma_0_M_AXI_MM2S_RDATA(63 downto 0),
      S00_AXI_rlast => axi_vdma_0_M_AXI_MM2S_RLAST,
      S00_AXI_rready => axi_vdma_0_M_AXI_MM2S_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vdma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_vdma_0_M_AXI_MM2S_RVALID,
      S01_AXI_awaddr(31 downto 0) => axi_vdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S01_AXI_awburst(1 downto 0) => axi_vdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => axi_vdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S01_AXI_awlen(7 downto 0) => axi_vdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => '0',
      S01_AXI_awprot(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => B"0000",
      S01_AXI_awready => axi_vdma_0_M_AXI_S2MM_AWREADY,
      S01_AXI_awsize(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S01_AXI_awvalid => axi_vdma_0_M_AXI_S2MM_AWVALID,
      S01_AXI_bready => axi_vdma_0_M_AXI_S2MM_BREADY,
      S01_AXI_bresp(1 downto 0) => axi_vdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S01_AXI_bvalid => axi_vdma_0_M_AXI_S2MM_BVALID,
      S01_AXI_wdata(63 downto 0) => axi_vdma_0_M_AXI_S2MM_WDATA(63 downto 0),
      S01_AXI_wlast => axi_vdma_0_M_AXI_S2MM_WLAST,
      S01_AXI_wready => axi_vdma_0_M_AXI_S2MM_WREADY,
      S01_AXI_wstrb(7 downto 0) => axi_vdma_0_M_AXI_S2MM_WSTRB(7 downto 0),
      S01_AXI_wvalid => axi_vdma_0_M_AXI_S2MM_WVALID,
      aclk => processing_system7_0_FCLK_CLK0,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0)
    );
axi_vdma_0: component brd_axi_vdma_0_0
     port map (
      axi_resetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_mm2s_araddr(31 downto 0) => axi_vdma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_vdma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_vdma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_vdma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_vdma_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_vdma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_vdma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(63 downto 0) => axi_vdma_0_M_AXI_MM2S_RDATA(63 downto 0),
      m_axi_mm2s_rlast => axi_vdma_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_vdma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_vdma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_vdma_0_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_s2mm_awaddr(31 downto 0) => axi_vdma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_vdma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_vdma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_vdma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_vdma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_vdma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_vdma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_vdma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_vdma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_vdma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(63 downto 0) => axi_vdma_0_M_AXI_S2MM_WDATA(63 downto 0),
      m_axi_s2mm_wlast => axi_vdma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_vdma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(7 downto 0) => axi_vdma_0_M_AXI_S2MM_WSTRB(7 downto 0),
      m_axi_s2mm_wvalid => axi_vdma_0_M_AXI_S2MM_WVALID,
      m_axis_mm2s_aclk => processing_system7_0_FCLK_CLK0,
      m_axis_mm2s_tdata(23 downto 0) => axi_vdma_0_M_AXIS_MM2S_TDATA(23 downto 0),
      m_axis_mm2s_tkeep(2 downto 0) => NLW_axi_vdma_0_m_axis_mm2s_tkeep_UNCONNECTED(2 downto 0),
      m_axis_mm2s_tlast => axi_vdma_0_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_vdma_0_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tuser(0) => axi_vdma_0_M_AXIS_MM2S_TUSER(0),
      m_axis_mm2s_tvalid => axi_vdma_0_M_AXIS_MM2S_TVALID,
      mm2s_frame_ptr_out(5 downto 0) => NLW_axi_vdma_0_mm2s_frame_ptr_out_UNCONNECTED(5 downto 0),
      mm2s_introut => NLW_axi_vdma_0_mm2s_introut_UNCONNECTED,
      s2mm_frame_ptr_out(5 downto 0) => NLW_axi_vdma_0_s2mm_frame_ptr_out_UNCONNECTED(5 downto 0),
      s2mm_introut => NLW_axi_vdma_0_s2mm_introut_UNCONNECTED,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(8 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(8 downto 0),
      s_axi_lite_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      s_axi_lite_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID(0),
      s_axi_lite_awaddr(8 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(8 downto 0),
      s_axi_lite_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      s_axi_lite_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID(0),
      s_axi_lite_bready => ps7_0_axi_periph_M01_AXI_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => ps7_0_axi_periph_M01_AXI_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      s_axi_lite_wvalid => ps7_0_axi_periph_M01_AXI_WVALID(0),
      s_axis_s2mm_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_s2mm_tdata(23 downto 0) => eventStreamToConstEn_0_frameStream_TDATA(23 downto 0),
      s_axis_s2mm_tkeep(2 downto 0) => eventStreamToConstEn_0_frameStream_TKEEP(2 downto 0),
      s_axis_s2mm_tlast => eventStreamToConstEn_0_frameStream_TLAST(0),
      s_axis_s2mm_tready => eventStreamToConstEn_0_frameStream_TREADY,
      s_axis_s2mm_tuser(0) => eventStreamToConstEn_0_frameStream_TUSER(0),
      s_axis_s2mm_tvalid => eventStreamToConstEn_0_frameStream_TVALID
    );
axis_data_fifo_0: component brd_axis_data_fifo_0_0
     port map (
      axis_data_count(31 downto 0) => axis_data_count(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_tdata(15 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(15 downto 0),
      m_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID,
      s_axis_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      s_axis_tdata(15 downto 0) => XYTSStreamToRawStream_0_streamOut_V_V_TDATA(15 downto 0),
      s_axis_tready => XYTSStreamToRawStream_0_streamOut_V_V_TREADY,
      s_axis_tvalid => XYTSStreamToRawStream_0_streamOut_V_V_TVALID
    );
axis_data_fifo_1: component brd_axis_data_fifo_1_2
     port map (
      axis_data_count(31 downto 0) => NLW_axis_data_fifo_1_axis_data_count_UNCONNECTED(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_1_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_1_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_tdata(7 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(7 downto 0),
      m_axis_tready => axis_data_fifo_1_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_1_M_AXIS_TVALID,
      s_axis_aclk => ulpi_clk60_i_0_1,
      s_axis_aresetn => xlconstant_1_dout(0),
      s_axis_tdata(7 downto 0) => convertToStream_0_evUSBStreamOut_V_V_TDATA(7 downto 0),
      s_axis_tready => convertToStream_0_evUSBStreamOut_V_V_TREADY,
      s_axis_tvalid => convertToStream_0_evUSBStreamOut_V_V_TVALID
    );
c_addsub_as_invert_and_delay1: component brd_c_addsub_as_invert_and_delay_0
     port map (
      A(0) => fifo_generator_0_empty,
      CLK => ulpi_clk60_i_0_1,
      S(0) => NLW_c_addsub_as_invert_and_delay1_S_UNCONNECTED(0)
    );
checkEvUSBStream_0: component brd_checkEvUSBStream_0_1
     port map (
      ap_clk => ulpi_clk60_i_0_1,
      ap_done => NLW_checkEvUSBStream_0_ap_done_UNCONNECTED,
      ap_idle => NLW_checkEvUSBStream_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_checkEvUSBStream_0_ap_ready_UNCONNECTED,
      ap_rst_n => xlconstant_1_dout(0),
      ap_start => const_VCC_dout(0),
      dataReg_V(15 downto 0) => dataReg_V(15 downto 0),
      dataReg_V_ap_vld => dataReg_V_ap_vld,
      evUSBStreamIn_V_V_TDATA(7 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(7 downto 0),
      evUSBStreamIn_V_V_TREADY => axis_data_fifo_1_M_AXIS_TREADY,
      evUSBStreamIn_V_V_TVALID => axis_data_fifo_1_M_AXIS_TVALID,
      glLastTSReg_V(63 downto 0) => glLastTSReg_V_1(63 downto 0),
      glLastTSReg_V_ap_vld => checkEvUSBStream_0_glLastTSReg_V_ap_vld,
      nonMonTSDiffFlgReg_V(0) => nonMonTSDiffFlgReg_V_2(0),
      nonMonTSDiffFlgReg_V_ap_vld => nonMonTSDiffFlgReg_V_ap_vld_2,
      tsReg_V(63 downto 0) => tsReg_V_1(63 downto 0),
      tsReg_V_ap_vld => tsReg_V_ap_vld_1
    );
cons_HIGH: component brd_xlconstant_0_1
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
const_HIGH: component brd_const_HIGH_0
     port map (
      dout(0) => Net2(0)
    );
const_VCC: component brd_const_VCC_0
     port map (
      dout(0) => const_VCC_dout(0)
    );
const_ZERO: component brd_const_ZERO_0
     port map (
      dout(0) => Net1(0)
    );
convertToStream_0: component brd_convertToStream_0_1
     port map (
      ap_clk => ulpi_clk60_i_0_1,
      ap_done => NLW_convertToStream_0_ap_done_UNCONNECTED,
      ap_idle => NLW_convertToStream_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_convertToStream_0_ap_ready_UNCONNECTED,
      ap_rst_n => xlconstant_1_dout(0),
      ap_start => const_VCC_dout(0),
      dataReady_V(0) => usb_cdc_core_0_inport_accept_o1,
      dataToCheck_V(7 downto 0) => ep2_tx_data_w_do(7 downto 0),
      dataValid_V(0) => ep2_tx_data_valid_w_do,
      evUSBStreamOut_V_V_TDATA(7 downto 0) => convertToStream_0_evUSBStreamOut_V_V_TDATA(7 downto 0),
      evUSBStreamOut_V_V_TREADY => convertToStream_0_evUSBStreamOut_V_V_TREADY,
      evUSBStreamOut_V_V_TVALID => convertToStream_0_evUSBStreamOut_V_V_TVALID,
      eventFIFODVReg_V(0) => eventFIFODVReg_V(0)
    );
eventStreamToConstEn_0: component brd_eventStreamToConstEn_0_1
     port map (
      ap_clk => processing_system7_0_FCLK_CLK0,
      ap_done => NLW_eventStreamToConstEn_0_ap_done_UNCONNECTED,
      ap_idle => NLW_eventStreamToConstEn_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_eventStreamToConstEn_0_ap_ready_UNCONNECTED,
      ap_rst_n => proc_sys_reset_0_peripheral_aresetn(0),
      ap_start => const_VCC_dout(0),
      count_V(63 downto 0) => NLW_eventStreamToConstEn_0_count_V_UNCONNECTED(63 downto 0),
      count_V_ap_vld => NLW_eventStreamToConstEn_0_count_V_ap_vld_UNCONNECTED,
      custDataStream_V_V_TDATA(7 downto 0) => EVABMOFStream_0_pixelDataStream_V_V_TDATA(7 downto 0),
      custDataStream_V_V_TREADY => EVABMOFStream_0_pixelDataStream_V_V_TREADY,
      custDataStream_V_V_TVALID => EVABMOFStream_0_pixelDataStream_V_V_TVALID,
      frameStream_TDATA(23 downto 0) => eventStreamToConstEn_0_frameStream_TDATA(23 downto 0),
      frameStream_TDEST(0) => NLW_eventStreamToConstEn_0_frameStream_TDEST_UNCONNECTED(0),
      frameStream_TID(0) => NLW_eventStreamToConstEn_0_frameStream_TID_UNCONNECTED(0),
      frameStream_TKEEP(2 downto 0) => eventStreamToConstEn_0_frameStream_TKEEP(2 downto 0),
      frameStream_TLAST(0) => eventStreamToConstEn_0_frameStream_TLAST(0),
      frameStream_TREADY => eventStreamToConstEn_0_frameStream_TREADY,
      frameStream_TSTRB(2 downto 0) => NLW_eventStreamToConstEn_0_frameStream_TSTRB_UNCONNECTED(2 downto 0),
      frameStream_TUSER(1 downto 0) => eventStreamToConstEn_0_frameStream_TUSER(1 downto 0),
      frameStream_TVALID => eventStreamToConstEn_0_frameStream_TVALID,
      hCnt_V(15 downto 0) => NLW_eventStreamToConstEn_0_hCnt_V_UNCONNECTED(15 downto 0),
      hCnt_V_ap_vld => NLW_eventStreamToConstEn_0_hCnt_V_ap_vld_UNCONNECTED,
      polReg_V(0) => NLW_eventStreamToConstEn_0_polReg_V_UNCONNECTED(0),
      polReg_V_ap_vld => NLW_eventStreamToConstEn_0_polReg_V_ap_vld_UNCONNECTED,
      polStream_V_V_TDATA(7 downto 0) => EVABMOFStream_0_polStreamOut_V_V_TDATA(7 downto 0),
      polStream_V_V_TREADY => EVABMOFStream_0_polStreamOut_V_V_TREADY,
      polStream_V_V_TVALID => EVABMOFStream_0_polStreamOut_V_V_TVALID,
      regX_V(15 downto 0) => NLW_eventStreamToConstEn_0_regX_V_UNCONNECTED(15 downto 0),
      regX_V_ap_vld => NLW_eventStreamToConstEn_0_regX_V_ap_vld_UNCONNECTED,
      regY_V(15 downto 0) => NLW_eventStreamToConstEn_0_regY_V_UNCONNECTED(15 downto 0),
      regY_V_ap_vld => NLW_eventStreamToConstEn_0_regY_V_ap_vld_UNCONNECTED,
      s_axi_config_ARADDR(4 downto 0) => ps7_0_axi_periph_M04_AXI_ARADDR(4 downto 0),
      s_axi_config_ARREADY => ps7_0_axi_periph_M04_AXI_ARREADY,
      s_axi_config_ARVALID => ps7_0_axi_periph_M04_AXI_ARVALID(0),
      s_axi_config_AWADDR(4 downto 0) => ps7_0_axi_periph_M04_AXI_AWADDR(4 downto 0),
      s_axi_config_AWREADY => ps7_0_axi_periph_M04_AXI_AWREADY,
      s_axi_config_AWVALID => ps7_0_axi_periph_M04_AXI_AWVALID(0),
      s_axi_config_BREADY => ps7_0_axi_periph_M04_AXI_BREADY(0),
      s_axi_config_BRESP(1 downto 0) => ps7_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      s_axi_config_BVALID => ps7_0_axi_periph_M04_AXI_BVALID,
      s_axi_config_RDATA(31 downto 0) => ps7_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      s_axi_config_RREADY => ps7_0_axi_periph_M04_AXI_RREADY(0),
      s_axi_config_RRESP(1 downto 0) => ps7_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      s_axi_config_RVALID => ps7_0_axi_periph_M04_AXI_RVALID,
      s_axi_config_WDATA(31 downto 0) => ps7_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      s_axi_config_WREADY => ps7_0_axi_periph_M04_AXI_WREADY,
      s_axi_config_WSTRB(3 downto 0) => ps7_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      s_axi_config_WVALID => ps7_0_axi_periph_M04_AXI_WVALID(0),
      skipFlgOutput_V(0) => NLW_eventStreamToConstEn_0_skipFlgOutput_V_UNCONNECTED(0),
      skipFlgOutput_V_ap_vld => NLW_eventStreamToConstEn_0_skipFlgOutput_V_ap_vld_UNCONNECTED,
      tsReg_V(31 downto 0) => NLW_eventStreamToConstEn_0_tsReg_V_UNCONNECTED(31 downto 0),
      tsReg_V_ap_vld => NLW_eventStreamToConstEn_0_tsReg_V_ap_vld_UNCONNECTED,
      tsStream_V_V_TDATA(31 downto 0) => EVABMOFStream_0_tsStreamOut_V_V_TDATA(31 downto 0),
      tsStream_V_V_TREADY => EVABMOFStream_0_tsStreamOut_V_V_TREADY,
      tsStream_V_V_TVALID => EVABMOFStream_0_tsStreamOut_V_V_TVALID,
      vCnt_V(15 downto 0) => NLW_eventStreamToConstEn_0_vCnt_V_UNCONNECTED(15 downto 0),
      vCnt_V_ap_vld => NLW_eventStreamToConstEn_0_vCnt_V_ap_vld_UNCONNECTED,
      vgaEn_V(0) => NLW_eventStreamToConstEn_0_vgaEn_V_UNCONNECTED(0),
      vgaEn_V_ap_vld => NLW_eventStreamToConstEn_0_vgaEn_V_ap_vld_UNCONNECTED,
      xStream_V_V_TDATA(15 downto 0) => EVABMOFStream_0_xStreamOut_V_V_TDATA(15 downto 0),
      xStream_V_V_TREADY => EVABMOFStream_0_xStreamOut_V_V_TREADY,
      xStream_V_V_TVALID => EVABMOFStream_0_xStreamOut_V_V_TVALID,
      yStream_V_V_TDATA(15 downto 0) => EVABMOFStream_0_yStreamOut_V_V_TDATA(15 downto 0),
      yStream_V_V_TREADY => EVABMOFStream_0_yStreamOut_V_V_TREADY,
      yStream_V_V_TVALID => EVABMOFStream_0_yStreamOut_V_V_TVALID
    );
fifo_generator_0: component brd_fifo_generator_0_0
     port map (
      almost_full => fifo_generator_0_almost_full,
      din(15 downto 0) => StreamToFIFO_0_fifoDataOut_V_din(15 downto 0),
      dout(7 downto 0) => fifo_generator_0_dout(7 downto 0),
      empty => fifo_generator_0_empty,
      full => NLW_fifo_generator_0_full_UNCONNECTED,
      prog_full => fifo_generator_0_prog_full,
      rd_clk => ulpi_clk60_i_0_1,
      rd_data_count(13 downto 0) => rd_data_count(13 downto 0),
      rd_en => usb_cdc_core_0_inport_accept_o1,
      wr_clk => processing_system7_0_FCLK_CLK0,
      wr_data_count(12 downto 0) => wr_data_count(12 downto 0),
      wr_en => StreamToFIFO_0_fifoDataOut_V_write
    );
proc_sys_reset_0: component brd_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => proc_sys_reset_0_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
proc_sys_reset_1: component brd_proc_sys_reset_1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_1_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK1
    );
processing_system7_0: component brd_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_CLK1 => processing_system7_0_FCLK_CLK1,
      FCLK_CLK2 => NLW_processing_system7_0_FCLK_CLK2_UNCONNECTED,
      FCLK_CLK3 => NLW_processing_system7_0_FCLK_CLK3_UNCONNECTED,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      I2C1_SCL_I => '0',
      I2C1_SCL_O => NLW_processing_system7_0_I2C1_SCL_O_UNCONNECTED,
      I2C1_SCL_T => NLW_processing_system7_0_I2C1_SCL_T_UNCONNECTED,
      I2C1_SDA_I => '0',
      I2C1_SDA_O => NLW_processing_system7_0_I2C1_SDA_O_UNCONNECTED,
      I2C1_SDA_T => NLW_processing_system7_0_I2C1_SDA_T_UNCONNECTED,
      IRQ_F2P(1 downto 0) => xlconcat_0_dout(1 downto 0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      SPI0_MISO_I => '0',
      SPI0_MISO_O => NLW_processing_system7_0_SPI0_MISO_O_UNCONNECTED,
      SPI0_MISO_T => NLW_processing_system7_0_SPI0_MISO_T_UNCONNECTED,
      SPI0_MOSI_I => '0',
      SPI0_MOSI_O => NLW_processing_system7_0_SPI0_MOSI_O_UNCONNECTED,
      SPI0_MOSI_T => NLW_processing_system7_0_SPI0_MOSI_T_UNCONNECTED,
      SPI0_SCLK_I => '0',
      SPI0_SCLK_O => NLW_processing_system7_0_SPI0_SCLK_O_UNCONNECTED,
      SPI0_SCLK_T => NLW_processing_system7_0_SPI0_SCLK_T_UNCONNECTED,
      SPI0_SS1_O => NLW_processing_system7_0_SPI0_SS1_O_UNCONNECTED,
      SPI0_SS2_O => NLW_processing_system7_0_SPI0_SS2_O_UNCONNECTED,
      SPI0_SS_I => const_VCC_dout(0),
      SPI0_SS_O => NLW_processing_system7_0_SPI0_SS_O_UNCONNECTED,
      SPI0_SS_T => NLW_processing_system7_0_SPI0_SS_T_UNCONNECTED,
      S_AXI_HP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_HP0_ARADDR(31 downto 0) => axi_smc_M00_AXI_ARADDR(31 downto 0),
      S_AXI_HP0_ARBURST(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      S_AXI_HP0_ARCACHE(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_HP0_ARID(5 downto 0) => B"000000",
      S_AXI_HP0_ARLEN(3 downto 0) => axi_smc_M00_AXI_ARLEN(3 downto 0),
      S_AXI_HP0_ARLOCK(1 downto 0) => axi_smc_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_HP0_ARPROT(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      S_AXI_HP0_ARQOS(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      S_AXI_HP0_ARREADY => axi_smc_M00_AXI_ARREADY,
      S_AXI_HP0_ARSIZE(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_HP0_ARVALID => axi_smc_M00_AXI_ARVALID,
      S_AXI_HP0_AWADDR(31 downto 0) => axi_smc_M00_AXI_AWADDR(31 downto 0),
      S_AXI_HP0_AWBURST(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      S_AXI_HP0_AWCACHE(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_HP0_AWID(5 downto 0) => B"000000",
      S_AXI_HP0_AWLEN(3 downto 0) => axi_smc_M00_AXI_AWLEN(3 downto 0),
      S_AXI_HP0_AWLOCK(1 downto 0) => axi_smc_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_HP0_AWPROT(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      S_AXI_HP0_AWQOS(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      S_AXI_HP0_AWREADY => axi_smc_M00_AXI_AWREADY,
      S_AXI_HP0_AWSIZE(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_HP0_AWVALID => axi_smc_M00_AXI_AWVALID,
      S_AXI_HP0_BID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_BID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_BREADY => axi_smc_M00_AXI_BREADY,
      S_AXI_HP0_BRESP(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      S_AXI_HP0_BVALID => axi_smc_M00_AXI_BVALID,
      S_AXI_HP0_RACOUNT(2 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RACOUNT_UNCONNECTED(2 downto 0),
      S_AXI_HP0_RCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_RDATA(63 downto 0) => axi_smc_M00_AXI_RDATA(63 downto 0),
      S_AXI_HP0_RDISSUECAP1_EN => '0',
      S_AXI_HP0_RID(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_RID_UNCONNECTED(5 downto 0),
      S_AXI_HP0_RLAST => axi_smc_M00_AXI_RLAST,
      S_AXI_HP0_RREADY => axi_smc_M00_AXI_RREADY,
      S_AXI_HP0_RRESP(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      S_AXI_HP0_RVALID => axi_smc_M00_AXI_RVALID,
      S_AXI_HP0_WACOUNT(5 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WACOUNT_UNCONNECTED(5 downto 0),
      S_AXI_HP0_WCOUNT(7 downto 0) => NLW_processing_system7_0_S_AXI_HP0_WCOUNT_UNCONNECTED(7 downto 0),
      S_AXI_HP0_WDATA(63 downto 0) => axi_smc_M00_AXI_WDATA(63 downto 0),
      S_AXI_HP0_WID(5 downto 0) => B"000000",
      S_AXI_HP0_WLAST => axi_smc_M00_AXI_WLAST,
      S_AXI_HP0_WREADY => axi_smc_M00_AXI_WREADY,
      S_AXI_HP0_WRISSUECAP1_EN => '0',
      S_AXI_HP0_WSTRB(7 downto 0) => axi_smc_M00_AXI_WSTRB(7 downto 0),
      S_AXI_HP0_WVALID => axi_smc_M00_AXI_WVALID,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED,
      USB1_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB1_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB1_VBUS_PWRFAULT => '0',
      USB1_VBUS_PWRSELECT => NLW_processing_system7_0_USB1_VBUS_PWRSELECT_UNCONNECTED
    );
ps7_0_axi_periph: entity work.brd_ps7_0_axi_periph_1
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => proc_sys_reset_0_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready(0) => ps7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => ps7_0_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready(0) => ps7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => ps7_0_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => ps7_0_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => ps7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => ps7_0_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => ps7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => ps7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => ps7_0_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready(0) => ps7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid(0) => ps7_0_axi_periph_M01_AXI_ARVALID(0),
      M01_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready(0) => ps7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid(0) => ps7_0_axi_periph_M01_AXI_AWVALID(0),
      M01_AXI_bready(0) => ps7_0_axi_periph_M01_AXI_BREADY(0),
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => ps7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready(0) => ps7_0_axi_periph_M01_AXI_RREADY(0),
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => ps7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready(0) => ps7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wvalid(0) => ps7_0_axi_periph_M01_AXI_WVALID(0),
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arready => ps7_0_axi_periph_M02_AXI_ARREADY,
      M02_AXI_arvalid => ps7_0_axi_periph_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awready => ps7_0_axi_periph_M02_AXI_AWREADY,
      M02_AXI_awvalid => ps7_0_axi_periph_M02_AXI_AWVALID,
      M02_AXI_bready => ps7_0_axi_periph_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => ps7_0_axi_periph_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => ps7_0_axi_periph_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => ps7_0_axi_periph_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => ps7_0_axi_periph_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => ps7_0_axi_periph_M02_AXI_WVALID,
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => ps7_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK0,
      M04_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arready(0) => ps7_0_axi_periph_M04_AXI_ARREADY,
      M04_AXI_arvalid(0) => ps7_0_axi_periph_M04_AXI_ARVALID(0),
      M04_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awready(0) => ps7_0_axi_periph_M04_AXI_AWREADY,
      M04_AXI_awvalid(0) => ps7_0_axi_periph_M04_AXI_AWVALID(0),
      M04_AXI_bready(0) => ps7_0_axi_periph_M04_AXI_BREADY(0),
      M04_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid(0) => ps7_0_axi_periph_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready(0) => ps7_0_axi_periph_M04_AXI_RREADY(0),
      M04_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid(0) => ps7_0_axi_periph_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready(0) => ps7_0_axi_periph_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid(0) => ps7_0_axi_periph_M04_AXI_WVALID(0),
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
system_ila_0: component brd_system_ila_0_1
     port map (
      SLOT_0_AXIS_tdata(15 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(15 downto 0),
      SLOT_0_AXIS_tlast => '0',
      SLOT_0_AXIS_tready => axis_data_fifo_0_M_AXIS_TREADY,
      SLOT_0_AXIS_tvalid => axis_data_fifo_0_M_AXIS_TVALID,
      SLOT_1_AXIS_tdata(15 downto 0) => XYTSStreamToRawStream_0_streamOut_V_V_TDATA(15 downto 0),
      SLOT_1_AXIS_tlast => '0',
      SLOT_1_AXIS_tready => XYTSStreamToRawStream_0_streamOut_V_V_TREADY,
      SLOT_1_AXIS_tvalid => XYTSStreamToRawStream_0_streamOut_V_V_TVALID,
      SLOT_2_AXIS_tdata(15 downto 0) => EVMUXDataToXYTSStream_0_xStreamOut_V_V_TDATA(15 downto 0),
      SLOT_2_AXIS_tlast => '0',
      SLOT_2_AXIS_tready => EVMUXDataToXYTSStream_0_xStreamOut_V_V_TREADY,
      SLOT_2_AXIS_tvalid => EVMUXDataToXYTSStream_0_xStreamOut_V_V_TVALID,
      SLOT_3_AXIS_tdata(15 downto 0) => EVMUXDataToXYTSStream_0_yStreamOut_V_V_TDATA(15 downto 0),
      SLOT_3_AXIS_tlast => '0',
      SLOT_3_AXIS_tready => EVMUXDataToXYTSStream_0_yStreamOut_V_V_TREADY,
      SLOT_3_AXIS_tvalid => EVMUXDataToXYTSStream_0_yStreamOut_V_V_TVALID,
      SLOT_4_AXIS_tdata(63 downto 0) => EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TDATA(63 downto 0),
      SLOT_4_AXIS_tlast => '0',
      SLOT_4_AXIS_tready => EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TREADY,
      SLOT_4_AXIS_tvalid => EVMUXDataToXYTSStream_0_tsStreamOut_V_V_TVALID,
      clk => processing_system7_0_FCLK_CLK0,
      probe0(15 downto 0) => testAERDVSSM_0_AERSMOutFifoData_DO(15 downto 0),
      probe1(0) => xlconstant_1_dout(0),
      probe10(0) => fifo_generator_0_almost_full,
      probe11(0) => StreamToFIFO_0_fifoDataOut_V_write,
      probe12(0) => ulpi_wrapper_0_utmi_txready_o,
      probe13(0) => skippedData_V_ap_vld,
      probe14(15 downto 0) => skippedData_V(15 downto 0),
      probe15(31 downto 0) => axis_data_count(31 downto 0),
      probe16(0) => tsReg_V_ap_vld,
      probe17(63 downto 0) => glLastTSReg_V(63 downto 0),
      probe18(15 downto 0) => yReg_V(15 downto 0),
      probe19(63 downto 0) => tsReg_V(63 downto 0),
      probe2(10 downto 0) => DVSAERData_AI_0_1(10 downto 0),
      probe20(0) => glLastTSReg_V_ap_vld,
      probe21(15 downto 0) => glLastYReg_V(15 downto 0),
      probe22(0) => yReg_V_ap_vld,
      probe23(0) => glLastYReg_V_ap_vld,
      probe24(0) => tsDiffFlgReg_V_ap_vld,
      probe25(0) => tsDiffFlgReg_V(0),
      probe26(0) => yDiffFlgReg_V_ap_vld,
      probe27(0) => yDiffFlgReg_V(0),
      probe28(0) => nonMonTSDiffFlgReg_V(0),
      probe29(0) => nonMonTSDiffFlgReg_V_ap_vld,
      probe3(0) => DVSAERReq_ABI_0_1,
      probe30(0) => nonMonTSDiffFlgReg_V_ap_vld_1,
      probe31(0) => nonMonTSDiffFlgReg_V_1(0),
      probe32(0) => MyDFFSynchronizer_1_SyncedSignal_SO(0),
      probe33(0) => MyDFFSynchronizer_0_SyncedSignal_SO(0),
      probe34(0) => dataReg_V_ap_vld,
      probe35(0) => tsReg_V_ap_vld_1,
      probe36(0) => checkEvUSBStream_0_glLastTSReg_V_ap_vld,
      probe37(15 downto 0) => dataReg_V(15 downto 0),
      probe38(63 downto 0) => tsReg_V_1(63 downto 0),
      probe39(63 downto 0) => glLastTSReg_V_1(63 downto 0),
      probe4(0) => testAERDVSSM_0_DVSAERAck_SBO,
      probe40(15 downto 0) => testAERDVSSM_0_AERSMOutFifoData_DO2(15 downto 0),
      probe5(0) => usb_cdc_core_0_inport_accept_o1,
      probe6(7 downto 0) => fifo_generator_0_dout(7 downto 0),
      probe7(12 downto 0) => wr_data_count(12 downto 0),
      probe8(0) => testAERDVSSM_0_AERSMOutFifoWrite_SO1,
      probe9(0) => util_vector_logic_1_Res(0),
      resetn => proc_sys_reset_0_peripheral_aresetn(0)
    );
system_ila_1: component brd_system_ila_1_0
     port map (
      SLOT_0_AXIS_tdata(31 downto 8) => B"000000000000000000000000",
      SLOT_0_AXIS_tdata(7 downto 0) => convertToStream_0_evUSBStreamOut_V_V_TDATA(7 downto 0),
      SLOT_0_AXIS_tlast => '0',
      SLOT_0_AXIS_tready => convertToStream_0_evUSBStreamOut_V_V_TREADY,
      SLOT_0_AXIS_tvalid => convertToStream_0_evUSBStreamOut_V_V_TVALID,
      SLOT_1_AXIS_tdata(31 downto 8) => B"000000000000000000000000",
      SLOT_1_AXIS_tdata(7 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(7 downto 0),
      SLOT_1_AXIS_tlast => '0',
      SLOT_1_AXIS_tready => axis_data_fifo_1_M_AXIS_TREADY,
      SLOT_1_AXIS_tvalid => axis_data_fifo_1_M_AXIS_TVALID,
      clk => ulpi_clk60_i_0_1,
      probe0(0) => usb_cdc_core_0_inport_accept_o1,
      probe1(0) => ep2_tx_data_valid_w_do,
      probe10(63 downto 0) => tsReg_V_1(63 downto 0),
      probe11(63 downto 0) => glLastTSReg_V_1(63 downto 0),
      probe12(0) => '0',
      probe2(7 downto 0) => ep2_tx_data_w_do(7 downto 0),
      probe3(0) => tsReg_V_ap_vld_1,
      probe4(0) => eventFIFODVReg_V(0),
      probe5(0) => dataReg_V_ap_vld,
      probe6(0) => nonMonTSDiffFlgReg_V_ap_vld_2,
      probe7(15 downto 0) => dataReg_V(15 downto 0),
      probe8(0) => nonMonTSDiffFlgReg_V_2(0),
      probe9(0) => checkEvUSBStream_0_glLastTSReg_V_ap_vld,
      resetn => '1'
    );
system_ila_2: component brd_system_ila_2_1
     port map (
      clk => ulpi_clk60_i_0_1,
      probe0(1 downto 0) => o_RX_Count(1 downto 0),
      probe1(0) => setupPktReceived_q_do,
      probe10(47 downto 0) => SPI_Master_With_Sing_0_o_RX_Byte(47 downto 0),
      probe11(1 downto 0) => c_counter_binary_0_Q(1 downto 0),
      probe12(7 downto 0) => usb_cdc_core_0_outport_data_o(7 downto 0),
      probe13(0) => usb_cdc_core_0_outport_valid_o,
      probe14(0) => usb_cdc_core_0_data_complete_o_do,
      probe15(0) => usb_cdc_core_0_rx_out_do,
      probe16(0) => ulpi_dir_i_0_1,
      probe17(0) => ulpi_nxt_i_0_1,
      probe18(0) => ulpi_wrapper_0_ulpi_stp_o,
      probe19(0) => token_valid_w_do,
      probe2(0) => dataSPIToSendPrepared_w_do,
      probe20(0) => usb_cdc_core_0_ep0_rx_setup_w_do,
      probe21(0) => SPI_Master_With_Sing_0_o_RX_DV,
      probe22(5 downto 0) => r_RX_Bit_Count_do(5 downto 0),
      probe23(0) => w_Master_Ready_do,
      probe24(5 downto 0) => r_TX_Bit_Count_do(5 downto 0),
      probe25(0) => outPktReceived_q_do,
      probe26(0) => ctrl_sending_r_do,
      probe27(3 downto 0) => wrSetupIndex_q_do(3 downto 0),
      probe28(2 downto 0) => wrOUTIndex_q_do(2 downto 0),
      probe29(0) => setup_resp_valid_delay_q_do,
      probe3(0) => rxDataComplete_o,
      probe30(0) => setup_valid_q_do,
      probe31(7 downto 0) => ctrl_txdata_q_do(7 downto 0),
      probe32(0) => ctrl_txvalid_q_do,
      probe33(7 downto 0) => ulpi_data_out_i_d(7 downto 0),
      probe34(7 downto 0) => ulpi_data_in_o_d(7 downto 0),
      probe35(0) => ctrl_stall_r_do,
      probe36(0) => ctrl_ack_r_do,
      probe37(7 downto 0) => bmRequestType_w_do(7 downto 0),
      probe38(0) => readAXIBRAM_r_do,
      probe39(0) => status_stage_w_do,
      probe4(7 downto 0) => dvs_resp_data_o(7 downto 0),
      probe40(7 downto 0) => usbf_tx_pid_q_do(7 downto 0),
      probe41(0) => usbf_ep_data_bit_r_do,
      probe42(0) => usbf_tx_valid_q_do,
      probe43(2 downto 0) => usbf_state_q_do(2 downto 0),
      probe44(0) => usbf_new_data_bit_r_do,
      probe45(0) => ulpi_wrapper_0_utmi_rxvalid_o,
      probe46(0) => ulpi_wrapper_0_utmi_rxactive_o,
      probe47(1 downto 0) => state_o(1 downto 0),
      probe48(0) => usb_reset_w_do,
      probe49(13 downto 0) => rd_data_count(13 downto 0),
      probe5(0) => SPI_Master_With_Sing_0_o_TX_Ready,
      probe50(0) => testAERDVSSM_0_AERSMOutFifoWrite_SO1,
      probe51(0) => usb_cdc_core_0_inport_accept_o1,
      probe52(2 downto 0) => sie_tx_state_q_o(2 downto 0),
      probe53(0) => ulpi_wrapper_0_utmi_txready_o,
      probe54(0) => usb_cdc_core_0_inport_valid_q_do,
      probe55(0) => ep2_tx_data_valid_w_do,
      probe56(7 downto 0) => ep2_tx_data_w_do(7 downto 0),
      probe57(2 downto 0) => state_r_do(2 downto 0),
      probe58(31 downto 0) => usb_rst_time_do(31 downto 0),
      probe59(7 downto 0) => usb_reset_counter_q_do(7 downto 0),
      probe6(47 downto 0) => USBFifoToDVSSPI_0_outputData_o(47 downto 0),
      probe60(15 downto 0) => tx_sent_data_counter_o(15 downto 0),
      probe61(7 downto 0) => ulpi_wrapper_0_utmi_data_in_o(7 downto 0),
      probe62(7 downto 0) => utmi_data_q_do(7 downto 0),
      probe63(0) => ulpi_nxt_q_do,
      probe64(0) => ulpi_dir_q_do,
      probe65(0) => ep0_rx_valid_w_do,
      probe66(2 downto 0) => setup_wr_idx_q_do(2 downto 0),
      probe67(0) => rx_strb_w_do,
      probe68(7 downto 0) => usbfrx_data_w_do(7 downto 0),
      probe69(0) => usbfrx_crc_byte_w_do,
      probe7(0) => USBFifoToDVSSPI_0_outputDataValid_o,
      probe70(0) => usbfrx_data_ready_w_do,
      probe71(0) => usbfrx_shift_en_w_do,
      probe72(0) => usbfrx_rx_active_w_do,
      probe73(0) => ep2_tx_data_last_w_do,
      probe74(0) => nonMonTSDiffFlgReg_V_2(0),
      probe75(15 downto 0) => testAERDVSSM_0_AERSMOutFifoData_DO2(15 downto 0),
      probe8(7 downto 0) => fifo_generator_0_dout(7 downto 0),
      probe9(0) => fifo_generator_0_empty
    );
testAERDVSSM_0: component brd_testAERDVSSM_0_0
     port map (
      ADCClk_CI => processing_system7_0_FCLK_CLK0,
      AERSMFifoAlmostFull_AI => fifo_generator_0_prog_full,
      AERSMFifoFull_AI => fifo_generator_0_prog_full,
      AERSMOutFifoData_DO(15 downto 0) => testAERDVSSM_0_AERSMOutFifoData_DO2(15 downto 0),
      AERSMOutFifoWrite_SO => testAERDVSSM_0_AERSMOutFifoWrite_SO1,
      ChipBiasAddrSelect_SBO => testAERDVSSM_0_ChipBiasAddrSelect_SBO,
      ChipBiasBitIn_DO => testAERDVSSM_0_ChipBiasBitIn_DO,
      ChipBiasClock_CBO => testAERDVSSM_0_ChipBiasClock_CBO,
      ChipBiasDiagSelect_SO => testAERDVSSM_0_ChipBiasDiagSelect_SO,
      ChipBiasEnable_SO => testAERDVSSM_0_ChipBiasEnable_SO,
      ChipBiasLatch_SBO => testAERDVSSM_0_ChipBiasLatch_SBO,
      DVSAERAck_SBO => testAERDVSSM_0_DVSAERAck_SBO,
      DVSAERData_AI(10 downto 0) => DVSAERData_AI_0_1(10 downto 0),
      DVSAERReq_ABI => DVSAERReq_ABI_0_1,
      DVSAERReset_SBO => testAERDVSSM_0_DVSAERReset_SBO,
      IMUClock_CZO => testAERDVSSM_0_IMUClock_CZO,
      IMUData_DZIO => IMUData_DZIO_0,
      IMUFSync_SO => testAERDVSSM_0_IMUFSync_SO,
      IMUInterrupt_AI => IMUInterrupt_AI_0_1,
      LogicClk_CI => processing_system7_0_FCLK_CLK0,
      Reset_RI => util_vector_logic_0_Res(0),
      SPIClock_AI => SPI_Master_With_Sing_0_o_SPI_Clk,
      SPIMISO_DZO => testAERDVSSM_0_SPIMISO_DZO,
      SPIMOSI_AI => SPI_Master_With_Sing_0_o_SPI_MOSI,
      SPISlaveSelect_ABI => SPI_Master_With_Sing_0_o_SPI_CS_n,
      SyncInClock_AI => SyncInClock_AI_0_1,
      SyncInSignal1_AI => SyncInSignal1_AI_0_1,
      SyncInSignal2_AI => SyncInSignal2_AI_0_1,
      SyncInSignal_AI => SyncInSignal_AI_0_1,
      SyncOutClock_CO => testAERDVSSM_0_SyncOutClock_CO,
      SyncOutSignal_SO => testAERDVSSM_0_SyncOutSignal_SO,
      USBClock_CI => processing_system7_0_FCLK_CLK0
    );
ulpi_wrapper_0: component brd_ulpi_wrapper_0_0
     port map (
      mode_complete_o => NLW_ulpi_wrapper_0_mode_complete_o_UNCONNECTED,
      mode_update_o => NLW_ulpi_wrapper_0_mode_update_o_UNCONNECTED,
      opmode_o(1 downto 0) => NLW_ulpi_wrapper_0_opmode_o_UNCONNECTED(1 downto 0),
      otg_complete_o => NLW_ulpi_wrapper_0_otg_complete_o_UNCONNECTED,
      otg_update_o => NLW_ulpi_wrapper_0_otg_update_o_UNCONNECTED,
      state_o(1 downto 0) => state_o(1 downto 0),
      termselect_o => NLW_ulpi_wrapper_0_termselect_o_UNCONNECTED,
      turnaround_d => NLW_ulpi_wrapper_0_turnaround_d_UNCONNECTED,
      tx_delay_complete_o => NLW_ulpi_wrapper_0_tx_delay_complete_o_UNCONNECTED,
      tx_rd_idx_q_d => NLW_ulpi_wrapper_0_tx_rd_idx_q_d_UNCONNECTED,
      tx_wr_idx_q_d => NLW_ulpi_wrapper_0_tx_wr_idx_q_d_UNCONNECTED,
      ulpi_clk60_i => ulpi_clk60_i_0_1,
      ulpi_data_dir_d => NLW_ulpi_wrapper_0_ulpi_data_dir_d_UNCONNECTED,
      ulpi_data_in_o_d(7 downto 0) => ulpi_data_in_o_d(7 downto 0),
      ulpi_data_io(7 downto 0) => ulpi_data_io_0(7 downto 0),
      ulpi_data_out_i_d(7 downto 0) => ulpi_data_out_i_d(7 downto 0),
      ulpi_dir_i => ulpi_dir_i_0_1,
      ulpi_dir_q_do => ulpi_dir_q_do,
      ulpi_nxt_i => ulpi_nxt_i_0_1,
      ulpi_nxt_q_do => ulpi_nxt_q_do,
      ulpi_reg_read_flag_d => NLW_ulpi_wrapper_0_ulpi_reg_read_flag_d_UNCONNECTED,
      ulpi_rst_i => xlslice_1_Dout(0),
      ulpi_stp_o => ulpi_wrapper_0_ulpi_stp_o,
      utmi_data_in_o(7 downto 0) => ulpi_wrapper_0_utmi_data_in_o(7 downto 0),
      utmi_data_out_i(7 downto 0) => usb_cdc_core_0_utmi_data_out_o(7 downto 0),
      utmi_data_q_do(7 downto 0) => utmi_data_q_do(7 downto 0),
      utmi_dmpulldown_i => usb_cdc_core_0_utmi_dmpulldown_o,
      utmi_dppulldown_i => usb_cdc_core_0_utmi_dppulldown_o,
      utmi_linestate_o(1 downto 0) => ulpi_wrapper_0_utmi_linestate_o(1 downto 0),
      utmi_op_mode_i(1 downto 0) => usb_cdc_core_0_utmi_op_mode_o(1 downto 0),
      utmi_rxactive_o => ulpi_wrapper_0_utmi_rxactive_o,
      utmi_rxerror_o => ulpi_wrapper_0_utmi_rxerror_o,
      utmi_rxvalid_o => ulpi_wrapper_0_utmi_rxvalid_o,
      utmi_termselect_i => usb_cdc_core_0_utmi_termselect_o,
      utmi_tx_accept_o => NLW_ulpi_wrapper_0_utmi_tx_accept_o_UNCONNECTED,
      utmi_tx_ready_o => NLW_ulpi_wrapper_0_utmi_tx_ready_o_UNCONNECTED,
      utmi_txready_o => ulpi_wrapper_0_utmi_txready_o,
      utmi_txvalid_i => usb_cdc_core_0_utmi_txvalid_o,
      utmi_xcvrselect_i(1 downto 0) => usb_cdc_core_0_utmi_xcvrselect_o(1 downto 0),
      xcvrselect_o(1 downto 0) => NLW_ulpi_wrapper_0_xcvrselect_o_UNCONNECTED(1 downto 0)
    );
usb_cdc_core_0: component brd_usb_cdc_core_0_0
     port map (
      axi_bram_addr_o(1 downto 0) => c_counter_binary_0_Q(1 downto 0),
      axi_bram_r_data_i(7 downto 0) => dvs_resp_data_o(7 downto 0),
      axi_bram_w_data_o(7 downto 0) => NLW_usb_cdc_core_0_axi_bram_w_data_o_UNCONNECTED(7 downto 0),
      bRequest_w_do(7 downto 0) => NLW_usb_cdc_core_0_bRequest_w_do_UNCONNECTED(7 downto 0),
      bmRequestType_w_do(7 downto 0) => bmRequestType_w_do(7 downto 0),
      clk_i => ulpi_clk60_i_0_1,
      ctrl_ack_r_do => ctrl_ack_r_do,
      ctrl_host_ack_i => rxDataComplete_o,
      ctrl_send_accept_w_do => NLW_usb_cdc_core_0_ctrl_send_accept_w_do_UNCONNECTED,
      ctrl_sending_r_do => ctrl_sending_r_do,
      ctrl_stall_r_do => ctrl_stall_r_do,
      ctrl_txdata_q_do(7 downto 0) => ctrl_txdata_q_do(7 downto 0),
      ctrl_txstall_q_do => NLW_usb_cdc_core_0_ctrl_txstall_q_do_UNCONNECTED,
      ctrl_txvalid_q_do => ctrl_txvalid_q_do,
      current_addr_i_do(6 downto 0) => NLW_usb_cdc_core_0_current_addr_i_do_UNCONNECTED(6 downto 0),
      current_token_debug_counter_q_do(63 downto 0) => NLW_usb_cdc_core_0_current_token_debug_counter_q_do_UNCONNECTED(63 downto 0),
      data_complete_o_do => usb_cdc_core_0_data_complete_o_do,
      debug_counter_q_do(63 downto 0) => NLW_usb_cdc_core_0_debug_counter_q_do_UNCONNECTED(63 downto 0),
      desc_addr_q_do(6 downto 0) => NLW_usb_cdc_core_0_desc_addr_q_do_UNCONNECTED(6 downto 0),
      enable_i => xlconstant_1_dout(0),
      ep0_rx_setup_w_do => usb_cdc_core_0_ep0_rx_setup_w_do,
      ep0_rx_valid_w_do => ep0_rx_valid_w_do,
      ep2_tx_data_accept_w_do => NLW_usb_cdc_core_0_ep2_tx_data_accept_w_do_UNCONNECTED,
      ep2_tx_data_last_w_do => ep2_tx_data_last_w_do,
      ep2_tx_data_valid_w_do => ep2_tx_data_valid_w_do,
      ep2_tx_data_w_do(7 downto 0) => ep2_tx_data_w_do(7 downto 0),
      inport_accept_o => usb_cdc_core_0_inport_accept_o1,
      inport_data_i(7 downto 0) => fifo_generator_0_dout(7 downto 0),
      inport_valid_i => fifo_generator_0_empty,
      inport_valid_q_do => usb_cdc_core_0_inport_valid_q_do,
      outport_accept_i => xlconstant_1_dout(0),
      outport_data_o(7 downto 0) => usb_cdc_core_0_outport_data_o(7 downto 0),
      outport_valid_o => usb_cdc_core_0_outport_valid_o,
      readAXIBRAM_r_do => readAXIBRAM_r_do,
      reg_dev_addr_i_do(6 downto 0) => NLW_usb_cdc_core_0_reg_dev_addr_i_do_UNCONNECTED(6 downto 0),
      rst_i => xlslice_0_Dout(0),
      rx_last_w_do => NLW_usb_cdc_core_0_rx_last_w_do_UNCONNECTED,
      rx_out_do => usb_cdc_core_0_rx_out_do,
      rx_strb_w_do => rx_strb_w_do,
      setup_frame_q_do => NLW_usb_cdc_core_0_setup_frame_q_do_UNCONNECTED,
      setup_resp_valid_delay_q_do => setup_resp_valid_delay_q_do,
      setup_token_valid_intr_o => NLW_usb_cdc_core_0_setup_token_valid_intr_o_UNCONNECTED,
      setup_valid_conter_q_o(15 downto 0) => NLW_usb_cdc_core_0_setup_valid_conter_q_o_UNCONNECTED(15 downto 0),
      setup_valid_q_do => setup_valid_q_do,
      setup_wr_idx_q_do(2 downto 0) => setup_wr_idx_q_do(2 downto 0),
      sie_tx_state_q_o(2 downto 0) => sie_tx_state_q_o(2 downto 0),
      state_r_do(2 downto 0) => state_r_do(2 downto 0),
      status_stage_w_do => status_stage_w_do,
      token_dev_w_do(6 downto 0) => NLW_usb_cdc_core_0_token_dev_w_do_UNCONNECTED(6 downto 0),
      token_ep_w_do(3 downto 0) => NLW_usb_cdc_core_0_token_ep_w_do_UNCONNECTED(3 downto 0),
      token_valid_cnt_q_do(31 downto 0) => NLW_usb_cdc_core_0_token_valid_cnt_q_do_UNCONNECTED(31 downto 0),
      token_valid_counter_q_do(7 downto 0) => NLW_usb_cdc_core_0_token_valid_counter_q_do_UNCONNECTED(7 downto 0),
      token_valid_w_do => token_valid_w_do,
      tx_sent_data_counter_o(15 downto 0) => tx_sent_data_counter_o(15 downto 0),
      usb_reset_counter_q_do(7 downto 0) => usb_reset_counter_q_do(7 downto 0),
      usb_reset_w_do => usb_reset_w_do,
      usb_rst_time_do(31 downto 0) => usb_rst_time_do(31 downto 0),
      usbf_ep_data_bit_r_do => usbf_ep_data_bit_r_do,
      usbf_new_data_bit_r_do => usbf_new_data_bit_r_do,
      usbf_state_q_do(2 downto 0) => usbf_state_q_do(2 downto 0),
      usbf_tx_pid_q_do(7 downto 0) => usbf_tx_pid_q_do(7 downto 0),
      usbf_tx_valid_q_do => usbf_tx_valid_q_do,
      usbfrx_crc_byte_w_do => usbfrx_crc_byte_w_do,
      usbfrx_data_ready_w_do => usbfrx_data_ready_w_do,
      usbfrx_data_w_do(7 downto 0) => usbfrx_data_w_do(7 downto 0),
      usbfrx_rx_active_w_do => usbfrx_rx_active_w_do,
      usbfrx_shift_en_w_do => usbfrx_shift_en_w_do,
      utmi_data_in_i(7 downto 0) => ulpi_wrapper_0_utmi_data_in_o(7 downto 0),
      utmi_data_out_o(7 downto 0) => usb_cdc_core_0_utmi_data_out_o(7 downto 0),
      utmi_dmpulldown_o => usb_cdc_core_0_utmi_dmpulldown_o,
      utmi_dppulldown_o => usb_cdc_core_0_utmi_dppulldown_o,
      utmi_linestate_i(1 downto 0) => ulpi_wrapper_0_utmi_linestate_o(1 downto 0),
      utmi_op_mode_o(1 downto 0) => usb_cdc_core_0_utmi_op_mode_o(1 downto 0),
      utmi_rxactive_i => ulpi_wrapper_0_utmi_rxactive_o,
      utmi_rxerror_i => ulpi_wrapper_0_utmi_rxerror_o,
      utmi_rxvalid_i => ulpi_wrapper_0_utmi_rxvalid_o,
      utmi_termselect_o => usb_cdc_core_0_utmi_termselect_o,
      utmi_txready_i => ulpi_wrapper_0_utmi_txready_o,
      utmi_txvalid_o => usb_cdc_core_0_utmi_txvalid_o,
      utmi_xcvrselect_o(1 downto 0) => usb_cdc_core_0_utmi_xcvrselect_o(1 downto 0),
      vendorReqRecived_o => NLW_usb_cdc_core_0_vendorReqRecived_o_UNCONNECTED,
      wValue_w_do(15 downto 0) => NLW_usb_cdc_core_0_wValue_w_do_UNCONNECTED(15 downto 0)
    );
util_vector_logic_0: component brd_util_vector_logic_0_0
     port map (
      Op1(0) => xlconstant_1_dout(0),
      Res(0) => util_vector_logic_0_Res(0)
    );
util_vector_logic_1: component brd_util_vector_logic_1_0
     port map (
      Op1(0) => fifo_generator_0_almost_full,
      Res(0) => util_vector_logic_1_Res(0)
    );
util_vector_logic_2: component brd_util_vector_logic_2_1
     port map (
      Op1(0) => xlslice_5_Dout(0),
      Op2(0) => xlconstant_ONE_dout(0),
      Res(0) => util_vector_logic_2_Res(0)
    );
util_vector_logic_3: component brd_util_vector_logic_3_0
     port map (
      Op1(0) => util_vector_logic_2_Res(0),
      Op2(0) => usb_cdc_core_0_inport_accept_o1,
      Res(0) => NLW_util_vector_logic_3_Res_UNCONNECTED(0)
    );
v_axi4s_vid_out_0: component brd_v_axi4s_vid_out_0_0
     port map (
      aclk => processing_system7_0_FCLK_CLK0,
      aclken => Net2(0),
      aresetn => proc_sys_reset_1_peripheral_aresetn(0),
      fid => Net1(0),
      locked => NLW_v_axi4s_vid_out_0_locked_UNCONNECTED,
      overflow => NLW_v_axi4s_vid_out_0_overflow_UNCONNECTED,
      s_axis_video_tdata(23 downto 0) => axi_vdma_0_M_AXIS_MM2S_TDATA(23 downto 0),
      s_axis_video_tlast => axi_vdma_0_M_AXIS_MM2S_TLAST,
      s_axis_video_tready => axi_vdma_0_M_AXIS_MM2S_TREADY,
      s_axis_video_tuser => axi_vdma_0_M_AXIS_MM2S_TUSER(0),
      s_axis_video_tvalid => axi_vdma_0_M_AXIS_MM2S_TVALID,
      status(31 downto 0) => NLW_v_axi4s_vid_out_0_status_UNCONNECTED(31 downto 0),
      underflow => NLW_v_axi4s_vid_out_0_underflow_UNCONNECTED,
      vid_active_video => NLW_v_axi4s_vid_out_0_vid_active_video_UNCONNECTED,
      vid_data(23 downto 0) => v_axi4s_vid_out_0_vid_data(23 downto 0),
      vid_field_id => NLW_v_axi4s_vid_out_0_vid_field_id_UNCONNECTED,
      vid_hblank => NLW_v_axi4s_vid_out_0_vid_hblank_UNCONNECTED,
      vid_hsync => v_axi4s_vid_out_0_vid_hsync,
      vid_io_out_ce => Net2(0),
      vid_io_out_clk => processing_system7_0_FCLK_CLK1,
      vid_io_out_reset => Net1(0),
      vid_vblank => NLW_v_axi4s_vid_out_0_vid_vblank_UNCONNECTED,
      vid_vsync => v_axi4s_vid_out_0_vid_vsync,
      vtg_active_video => v_tc_0_vtiming_out_ACTIVE_VIDEO,
      vtg_ce => v_axi4s_vid_out_0_vtg_ce,
      vtg_field_id => '0',
      vtg_hblank => v_tc_0_vtiming_out_HBLANK,
      vtg_hsync => v_tc_0_vtiming_out_HSYNC,
      vtg_vblank => v_tc_0_vtiming_out_VBLANK,
      vtg_vsync => v_tc_0_vtiming_out_VSYNC
    );
v_tc_0: component brd_v_tc_0_0
     port map (
      active_video_out => v_tc_0_vtiming_out_ACTIVE_VIDEO,
      clk => processing_system7_0_FCLK_CLK1,
      clken => '1',
      fsync_out(0) => NLW_v_tc_0_fsync_out_UNCONNECTED(0),
      gen_clken => v_axi4s_vid_out_0_vtg_ce,
      hblank_out => v_tc_0_vtiming_out_HBLANK,
      hsync_out => v_tc_0_vtiming_out_HSYNC,
      resetn => proc_sys_reset_1_peripheral_aresetn(0),
      vblank_out => v_tc_0_vtiming_out_VBLANK,
      vsync_out => v_tc_0_vtiming_out_VSYNC
    );
xlconcat_0: component brd_xlconcat_0_0
     port map (
      In0(0) => '0',
      In1(0) => axi_gpio_0_ip2intc_irpt,
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
xlcons_data_0x5a5a: component brd_xlconstant_1_2
     port map (
      dout(15 downto 0) => xlcons_data_0x5a5a_dout(15 downto 0)
    );
xlcons_valid_high: component brd_xlconstant_1_1
     port map (
      dout(0) => xlcons_valid_high_dout(0)
    );
xlconstant_0: component brd_xlconstant_0_0
     port map (
      dout(2 downto 0) => xlconstant_0_dout(2 downto 0)
    );
xlconstant_ONE: component brd_xlconstant_1_0
     port map (
      dout(0) => xlconstant_ONE_dout(0)
    );
xlslice_0: component brd_xlslice_0_0
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio_io_o(31 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_1: component brd_xlslice_1_0
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio_io_o(31 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
xlslice_2: component brd_xlslice_2_0
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio_io_o(31 downto 0),
      Dout(0) => NLW_xlslice_2_Dout_UNCONNECTED(0)
    );
xlslice_3: component brd_xlslice_2_1
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio_io_o(31 downto 0),
      Dout(0) => NLW_xlslice_3_Dout_UNCONNECTED(0)
    );
xlslice_4: component brd_xlslice_3_0
     port map (
      Din(31 downto 0) => axi_gpio_0_gpio_io_o(31 downto 0),
      Dout(15 downto 0) => testAERDVSSM_0_AERSMOutFifoData_DO(15 downto 0)
    );
xlslice_5: component brd_xlslice_5_0
     port map (
      Din(12 downto 0) => wr_data_count(12 downto 0),
      Dout(0) => xlslice_5_Dout(0)
    );
end STRUCTURE;
