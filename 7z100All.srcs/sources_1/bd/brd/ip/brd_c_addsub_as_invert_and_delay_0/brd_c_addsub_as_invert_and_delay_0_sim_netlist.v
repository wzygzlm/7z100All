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
TBAe9ehLvURF
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
