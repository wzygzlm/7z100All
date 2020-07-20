// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jul 20 21:18:54 2020
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
OJcwjPjFPswhQBMCKYUvQRmnPpuPxjYbBHAUSaWelJFHqYKUzmHxuSu0CkUQ4GOvd8VLUEHmlb6K
xS1K7DYk6kn1QaJJxnACJ5poEG/vFIfYWDd/UTDAhmUr7g50cMivuBDfsp+/aoeuChzjTDYxPfWG
q6rhQ/g/kaAD6BgVhgLyyOHQKU7lxDL8pP+vNr5w9Jfi6hoHJ+ocYEQyQ+E/kOm1xevb6wi+MkTs
/xbJPUYl5znxP83171WeQpbf48deRuJruBj2+NxWL/WsHjs39WH8mRe5a6O2OywtgODjBTTZIIYq
Wmxm0+A3Rrlfv5Zr6lhom2zjQEbZ6GYqiKBAzA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ra74b+d2hw8hIOgeD2O/sk51qjXgatMImkKeuyhofBUKmdxr+j2MvxliWKc1zvr/e5t4WlehzDNe
vMTFELAWHmIJ+bAjkR9LrioompLa6estinx9r7kuESccfUjYTBoa1sEP5G2xUSqUlj4D33gGmtok
CCprcWHhPQQOXc1h2ENbxBBaEcrPffAVELX0JiokfMWcCbMGBXhuewImz1KgF+3FBg95RnBh0PwC
B04WfU4aibS911VqxLgLCe6dFaeiOkf6awWJ2ATjJe3QpLGx9FXD5E6zEKt2BPMp7PVqeS0WzdYC
FcrdHEvRcE7gzxZXxMILmPmMP6maeMGB1x6oBw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3904)
`pragma protect data_block
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
dhPMzRsIwuTSm/BJnvNbyTHNK5kOWCUoyvwYOA==
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
