// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jan 20 17:07:00 2020
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top brd_c_addsub_0_0 -prefix
//               brd_c_addsub_0_0_ brd_c_addsub_0_0_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input CLK;
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
q7woTGfpX8LcSOJ1ZuGhCcDYeluhi+WbXOQsDNuDnc7bM1ZBI0Sd7X+vSlqQhVqXw2xIvAFOLVZt
5Zyx4Wn1jFqKyMH5+M2SSRbJEqqZhL3D9Bn5+FY2vtx66vzPkIWgTqONQ0yvOvGZjffOes8YOCpS
9zpKApC39SIjqwsMEAyTjjyZjNXtf5iBjC5OnAd+J1ud0ASG1jErG0UqzsN4BLdqOQ1to5bOrGzJ
pYUj+ZlwU40gQ5Repx2BpVnFyuaUfLsvb56P7TwXhExkBiij51B4hLRCW2C37KK9f9MYoZsNdHcc
3L6FPtPOEFJdaMXIUKwXexa33olhKCt9cKwu6A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kURMr4ZxI3D/8CBUQ3plt865N56XVZmyxzQQyWMW72GLCdJQmj1xASZblC2O+VKixlsK2X3vu5mK
vJejQGxQJNX5bVMSoIKuE5pIMzCWYBiU6vuDLg4VhQH5o0a8NDSwttadxTf1W5zWwle2vh6DPjRk
oM6VQhCr0hoMVL9acN9+mlfTU/cH1mR4FqcZiNiiEKBoXTVmKMj2K2k/OGAWHiz0SLHlWKSPYc05
KohdXUomPjDeYI3qlJ46Yie56g71sCuM0WcUEWcMaXLw5aw5ZD2X4uqcjf4ZFUwfUIfEQGOD+SLu
2dCcbaW4gejAwWkRMADFaNG6ZJ7bm2EwFprsNQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3664)
`pragma protect data_block
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
40AlDuHD0x55dD6iw00qXAGPjZQ=
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
