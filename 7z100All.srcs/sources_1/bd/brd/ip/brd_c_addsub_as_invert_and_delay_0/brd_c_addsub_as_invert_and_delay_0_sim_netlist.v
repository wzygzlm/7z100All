// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Mar  9 11:58:47 2020
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
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
Rm+7sk/4CnKVKWyUeQ5YndjN+eDvvHBXJiVCjGRZcVvhAphTSVEgQHTe5hy5+GSg+roUbZo+m39u
0pX7nvTH48uLErSOEqsVZS2sJ4OCVGYTsaDpqYDBgSbzHHHOTlewyML2VFsxLhME/a51jcOhSJrZ
pNcPPdh31VlzoUBYoF5xnL1RbetBkPJ3poE98nYDqVzyNNGOf3dMyP34f44e1TdM0+SIgf7uejwP
dQ0gZcKuqBh5EqW8xkXE1JJXIFhKEtD5DmhOgwC5Rxj/eXodtcnTcvegm6BLfS+bfEQPX8dGZprx
jUocWT8tj2iv6D0tE7X4+Fns05KhcPlrwKcS5Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z1KCN/JIHM2hoppCIroE9Grsjg5//y8G9Ij1ZfecXLnrH1ygSK+mDnIsiolKPiGhPXvUplk2wW++
GdUJCjZNXnFFXxS3rfqv0ueQCBpQZGU0RJikn+B4cdcY7xQICgyBlE6qk0HcWFp84jAhoCS/kHft
tc2PStXgImFSBey4MiGSLGr4bUC7ntIBKu7FmXgev6qhSHhC5GLurEACPr4Mif2ox9aXfpAZ5fix
db2EDZgZvJktAy8QGlPWgVdYp+ig+ZXWt+mXTVXzx4lUUP/ZcDFYdPilijcyQzme/06Qx5EgLObU
Wg+Y8ar/skJayipoQ1auU66Nns+29Lk4+zO6qQ==

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
