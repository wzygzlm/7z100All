// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jan 20 17:41:35 2020
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top brd_c_addsub_as_invert_and_delay_0 -prefix
//               brd_c_addsub_as_invert_and_delay_0_ brd_c_addsub_0_0_sim_netlist.v
// Design      : brd_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_c_addsub_0_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
eY0wS7AydpkCyoPpx40+r/CA+hQ521U37s1wSiS2hPLP3PXqD/7BqWFssGt8VKhiX+yUr6rDQ4q4
2sS1kTiIgL8L/iisSeZ6lKtweGW4QeuSUFNNfvIMZ45pm65Gn/Qfs5i+GBTDbMM8BMVyHxJDEDDX
J9gaCzNGu4TyPKTCDdtO8iYNL70BnXDTv95nl6HY+OES4E0mQ17Pc5CbtOVcUF8gryu+NdxNFZaC
Q1lCcFnptX1M9SFIDOlpE3RPA1FsxaQcKD1Mn+WZXX9e1zZak164DJ1Uj0ZiwzOa5mYI+eUTU12Q
jli9KZdY+OmNTkuCU8mMdRtHnXxrJwZqyKVGiQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5RWypHzgqDLHXeAHJFgPmexj/p6dCFliBkp7DBra7QkJzhIkwrcYXWyFa0DuKqZvi8wDpaQTs/oW
zaWL4BNJP/yocZ1M5fxUCUoZWJekuf8henE7hwA89hWBRjRQ+22DyqJq9vqSIdLSyolMicaUla3r
gGDTGuVo4JLD2tpPaJk1gxpu00f9TObfCC199oY7WMRTNYoCgGShxKwDOFDbCB+KQj6PYJKUwbqg
YWRbpXrtZwBLxgAgxJiYzXL0usWPugetqhrHNwHtX0ZwBiKYTCL+QpW380y4DiRZfd8M1JfvHpTU
+d25eplCKVLRbkRiqWdwqrvBfPG9BRFQrDERHw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3664)
`pragma protect data_block
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
l2LquKru4KWq
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
