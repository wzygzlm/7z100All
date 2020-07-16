// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Jul 16 13:58:25 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_c_addsub_0_0/brd_c_addsub_0_0_sim_netlist.v
// Design      : brd_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_c_addsub_0_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_c_addsub_0_0
   (A,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]S;

  wire [0:0]A;
  wire CE;
  wire CLK;
  wire [0:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "1" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1" *) 
  (* c_b_width = "1" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  brd_c_addsub_0_0_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "1" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1" *) 
(* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module brd_c_addsub_0_0_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [0:0]A;
  input [0:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [0:0]S;

  wire \<const0> ;
  wire [0:0]A;
  wire CE;
  wire CLK;
  wire [0:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "1" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1" *) 
  (* c_b_width = "1" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  brd_c_addsub_0_0_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HXV4h5+M0Gyv7vvpLcg9doICq0dE9GVjJBO+hNdPTJvgX0VGA4ugqBKlkEqGuOyKztRGzLB27s8X
6i5leC2InQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dAxa0GFtAgoazxeRmxSl0Yps/nJ8Rpb3lCs3dkGXEdmxjp4N5EFfyS7U0FLTPNVV4xnePCr4q647
L4KcUzdGFlWPqo/QF8lyz6PEdU6dW8BktZKhrZHQ5uhG7d/Bf0EOVUn0mzfj8sgbaKWZYTEDERK6
pLNcwS3fMTcRzexShzE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qFA2Sas20o42qyLKUfSMJZGJ7FMOuYDRWyURzBBH3n2Qkaa75HLaliBCTs00LUZYplObnmj1+ZAf
80sKN7qGXguQ1PwKDYYHAVh9l9yGVlyNwObLOec7nrtHIPRPZ1Am330sVZYMipFnG9PAZanD2fe4
zBKk26jw4HdRQmG3vM1SWF3vXt1VR+UBS5eMUwG6haQqtGIZWHz48uyl4zc44Tqr2H4sR+yo0gE9
bXUY7Oc0GQvnczTzBftbc9jGOvnoi8sVcybTki5B/gTVWkBqcYl+Bx+SSOCo+FyQZGBqrUAFnf1m
pKFCRJnXqs4g3cmrmEG2RflwrWfJCOs3QdUjPQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EHIPCw3tqvASBeRc846RSvWMIU/QBgZYfNTkmzG9OlWqwIA3ukwCJx+dEAZCMyg/i7GW815EkwKE
ar/FOnRiTLMQpurIVTi3As1Sl6c1DkXq90HBljZSq18EFjvlH8nsGa0654mVCFQN3PiQfUfggiqD
LwP079R222U916zaDIMw6ZgRcbfM7bBAp73emqe6OC5mrt4mMGZ9AbQkGRU4iJeWX5x5zM0ev20/
2HCVT3rThYEK/hMu/29O6ZYpOwhKqVFUV8jaodAIgDRiYY0qd/CTZK9mvOgSUj0t6cJN4/Q/wVKt
mcOTr4F5A5rnCTva3pM2/SBekXOwQb01/rlfUQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L4GJr0S0dl+C4k+rj1r/KaqPKn7XGNysYQlDBTRHxj0Zgto0TejuU3cSjQJkMo/IlhkL5vx3hSMx
8DXh0KGY4W7Mmk5SffBJgti7D1pd1YP3w0zgDKIAkTLpoXaZECn77Jp9JWvdxrSHUb44QeC0VkRr
TT67tMIjtV+eqkCUfUiCSGq39iRyI7EpdVInAevmPCNIG5K4rHLTX0aJWAbgDwBRaTpw7W4wOBUe
Kag07iTsJYfG9TBJdRao3h4g2IyFjrcf4tdYFjQEIGB4Vfxhy6K9JjnkkfxGJQ4A0VrJVKlHsJFv
1+MmwN5+h/oRYCFJgcCtGfttJc2/AOQ8JKB8cw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gW6aOcJbrDMK7JqUnzFxAaYM2DL8EnxF345IOLkdfKxGnLCsw0mROpfP26LD91CJidCf9vaqLHsN
jwsLktZ7qUykkQzv9vOvGkB2KoLh32fPvZjhbcdDei3fy9cH8haCHJCiSghwIIOfzcXDyQO7+mpH
LfBUho9v0PmfLkeqSuE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YOgS+O+OWj8gVxfmdd2e+iTOOA4l1LloRJHtygw6wsU5a/FGoLxtLFOm39pCwOesAIo5cgP1cY7j
GMsvnPuTgP6YVNEPrLenO+0bM+rFgEpkVPDLGiQdrj+9tlcVifFJGGcDEFMtdjPm7SvdpsEh2Fzk
ZyTciJbc1vOSbmNUfL7f5SyT4X8NVQCnr4aIhzmrObrl+d/HXH5pWY0/wveklgGbBxwN3pI0aNdn
cY/a3XotdDTVTgdYnz9zaxscNhKuVHf6BpyCfI+XDdopSBDa7E47+Tot6Ck17VwjOOAKkqSNjD7+
HzzA77lmBhIrUxZnuOejS1O/VD/gmpze9ZPaeA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UK+0svHRSNPANbNxWqsPlibo9YF3xjnC/ydL7ZSGpCWwlT/UPbV5mK8Pk3q9JRLa7vphoq0+McXG
iy1PNTPPuv+AWSdURjUqtnJiWxBXXhTPxvhnPnIY7Vh8vsUlu4W1mI2maJoXZgCcr+xupqAFPwCV
fTR55hj78ZQYHPwwRh9PtW7cEtCXUSflYFCr1XE9Ns8tPS/ryaDhvLa0ul+YAf5QTnNaFT3DexKT
UXbKe4lwz08DvzsI5DueW/NqarkkdFpS0jszds6UNf08tOJilkzH56Gq+oRf4RSuDuCQ2mlbJkPS
7p0M077tEaDXXAQP9fTFLk7cwUqUD/tn27io8g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qVS0LoACjINSwui8Jvi7krCLmGy5eIO6vsRhFY0vbqbooiertZbm3pZwSoMDJGijmJhvTYEhm6hQ
I8FufK0YNvjwbGUfB4pvvBYY6vEXvzmDO6y944Ymlg2H2IABKwrrhy0ce9CveAz+XclzPs2Fs2eU
k8Ci7g7gDzJuw2SiysRcrrkNtDJI8lW9PMy3VsROv6rIxiZeR62GrDNrrEcp90kL113UkFnFhqiW
x0/REVz0PepdVF5xuyMV7O5K0DOkLyQffK7+xJMo/YKfuwedt1GKZByHQFrKnKN6IoAiFXmdkh/w
OVQVVD3qI+pi7ATt2GbsBMi3cCSRUx+l5B3rCQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3904)
`pragma protect data_block
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
qeEfPfi73D1O/lQ9mnZF9pvGXXx173TCC7UWqg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
