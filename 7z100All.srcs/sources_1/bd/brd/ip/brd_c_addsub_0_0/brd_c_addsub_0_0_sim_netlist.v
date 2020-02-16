// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jan 20 17:41:35 2020
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
+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
Ojn+OpZJK/g6n1lyheuVNccngxs=
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
