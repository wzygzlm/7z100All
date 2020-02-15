// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Feb  8 12:48:12 2020
// Host        : DESKTOP-MC69HMJ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/github_prjs/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_c_addsub_0_0/brd_c_addsub_0_0_sim_netlist.v
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
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]S;

  wire [0:0]A;
  wire CLK;
  wire [0:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
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
        .CE(1'b1),
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
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
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
  (* C_HAS_CE = "0" *) 
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
        .CE(1'b0),
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
IKGkXJeeiJuwHdmOx3mRfHzRb/8RhbiYdS7BYJ4omnOVYkUPXTHmpiC+6+ArniXdFhmhRxv0/WuY
gC6WMZDuwFfnRE2m5iUWq4xrlnArbdCvxUiTCIna++dVZaQTuAHc1145bYdvmvCkWNKmzVJHs7q0
xo42MJWaZVONROfWVQukAauH0QyZksVXFROTS2lCUFKzCvUULEFy/URKG1hxT0tAUaF8sftNRcEa
L0IGc1VcHikJsRdNc7LJZ+2nk7xtlXLZlRRIsbpWPiE7IfQA//Of0hao7oKo4Zhtzrb9hxIo7sw1
Q5ouJ+Zxy5BJK4AlvPiiNH9i+PbMUY3MmJQQqQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ioYbrgjNyOQGgGtPBQ+S0zs0dNaTV0e5G207p66isXYEz5ROMfl/PsGAmYrs+Hzw5llS6gESsED2
cDsR+bp8ZJzDLUwihM8H5Uzm0A05WKXuYYJj6hSm34f8hrvvJlte8k/xDXfrcYc+xkNX7Z+AtpA4
awNAWJUI12ZTX0vDXD+6e8DlFZ4c9lGvwYVD5WVa627ADxGj3EPYTIuxZlDbR4K1hlvxgYcx5/AY
W3+S5PZXwek9/7sRvKyX6/Cfk0rXIfe9tPb50+F0f3LBwFdyBiOYn1pzSKeOfXDCmf2vN4Ur9bFm
k0SdXjMzJsoObr/vOzeQeSvdUa35b5WD+tej/g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3696)
`pragma protect data_block
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
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
