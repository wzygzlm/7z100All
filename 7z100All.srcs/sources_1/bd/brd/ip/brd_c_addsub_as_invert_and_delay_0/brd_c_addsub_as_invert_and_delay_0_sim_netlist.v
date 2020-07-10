// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Jul 10 14:26:53 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_c_addsub_as_invert_and_delay_0/brd_c_addsub_as_invert_and_delay_0_sim_netlist.v
// Design      : brd_c_addsub_as_invert_and_delay_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_c_addsub_as_invert_and_delay_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_c_addsub_as_invert_and_delay_0
   (A,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 60000000, PHASE 180.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input CLK;
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
  brd_c_addsub_as_invert_and_delay_0_c_addsub_v12_0_12 U0
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
module brd_c_addsub_as_invert_and_delay_0_c_addsub_v12_0_12
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
  brd_c_addsub_as_invert_and_delay_0_c_addsub_v12_0_12_viv xst_addsub
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
cJvclBPZhtKOYzhDRaEmgS+7FKt3vd0/vd/F7KlZvOG9SoUjBbe2C6q5w9ZeeLl9m15wsPCIlwSm
h1cH+W7aiV6ZKBfAHvisFf0z4rVg4+ppnn+MjnDXNolcIDHVMCXobzE/+wYcBB3+LQeziHbRMuCy
aQqHlcR7gVH/CZodz2D4fOA/SLZ6awOuzcwNoelIt4VpLe1bw9BdxOyrMF+TittzlGVfsffmVsyh
kEYTGoxPV9479UcWLMywGSon3iDtiah37TB3n/TBvnh/oNbdtWmQfdqExg7eXTmi3Ff5EfuOBowx
6u7vIHyiHe/twjfUw4u2oyi/aVBmh8WKF0F4sw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tMYtHKW1SFyyRRNM5hP/dPt1AOYOFhgZPyvEboGxrzW2FY40wxzsx8iO4wqIDLBjVKLC1YsVqGeJ
ls2zov5A6vuM3qfVQhhGyjzBEleVfyi9/yNpXbsCM6jvMgmOlz0Lw+Y0uRV6mZzM86KQvFw62xTh
uYWDB3s7YURqD3a2+W734J7ouWEN8PMvNtFGM5FI7E10ML0SdMlm4QcH2dP4bkxFrwM57nzip77r
LqtLWETgChp2XjjyZ3JzmiZChL+G+uucxOO7VKPEyLZ2P7DQeKvUGzmmRBI6jC45ysUk021qgXMn
8Tk1YHIrIf1Erf4vC5MtDJ7kEvCva6AHR6G/ow==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3856)
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
