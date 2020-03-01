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
WJ1bBsCVf7Mx
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
