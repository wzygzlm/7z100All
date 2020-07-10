// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Jul 10 14:34:41 2020
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
A/GgMPHIHYFUPpHPw0x9Upaks++zA6EHeTkhNC2otvFznTtxhDpFMkoTGQxbPuYOSJshUAFFMg+B
VH1yiXJC+zo7sHHixfv7X/3f0CteDiCH/OTJItPiLv5mdfVvdTZE2aBCBFWjBeEVhl70aOvAHgIk
iJZfSN3sVtjgG1l4zYMauubUT+1azKITFK4yPJYQBg/FCuyA4YNGaFxiPexDDsiTjgTEEGj2h43g
rZ2xNUYLFQ68W6eLHShzDGD8NZBCIYmeXtOW1/eiD2XRXfY6smkyW1ZGhfs8AfSHsz+xB8I2mEG2
lQYQhFkra32df3GIn4Cd1piBhLqpAzq3B7B6JA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3AqNfUOFljrp8tF0QeNglX/ccUKPtulOaPfFIQkz+eiBpE8t2Nzo/PN6G7dKFeA8tAzFl16122ll
wDTz/6It5AYDrHOTrgbpPBxqDRSnhF94OAej3cTos2m/VSaYPcFLE9G1av50ezumbia9QZC3egyd
V6tdnjBP6alRB1B61EkUVhyLQjz7p8lQONabmU8MtgtSfkd2aspxG7KDDArYarS0pyER3+k6z4ng
wimisiIah2jxuk9YBLz5BUMW/ZQsjMJKLRoopuG8CHosJa5m+B9S0UkM8Zsq/Sdffpz1OPvIM0BU
BMtv/16ME8aeDtX2yFJzMFFBXhdJRMBr8HzmXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3904)
`pragma protect data_block
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
RoS24Cyvxohbc1i3HGAN5+PrNcjS3QQ7/+320A==
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
