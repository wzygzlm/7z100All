// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Apr  4 15:16:18 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top brd_c_addsub_as_invert_and_delay_0 -prefix
//               brd_c_addsub_as_invert_and_delay_0_ brd_c_addsub_as_invert_and_delay_0_sim_netlist.v
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
pTYvuPr3fXbLzZgyRWoHv4ldMVfEUWuurlaCfXoTtCZieNk3NogKOwfxIhfeOx+MNDTx+es6W3/L
V8HNHW8LJvjeoCY0YHMjWvyjiG8ofbkWvmeUkt8ZnxxGslbcGPwvwcXXMMjcSMUcy92uwrRb3l3e
75CsuPCPILp8PQ5WTdDAV25z3tbJUJqoeKiNqIkw9RD0yBgXMPFK8hhyMsxOmwcuSoIHfTE/zISo
yXzUTpgiWKtcJ5N1AiFzrLQTTlbRc8BJlzhwwE2W32gHvhDWrKFWwFdzHB7XfCltkLeYQLNw65Td
H9qEZJtoOtVWv/uaYFn3MUZw4esr/pGbD+3Fng==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lQksRoxbsTrCpWHx0KPXGmP97nh+MHThTyN0lQz7mAFtQ8evXSnblAOoATsGKYT62ZvEaB+/GUrD
Nn5eZ7Xwwf1N4kSep6QiiQ8BZ6ZZ5mS5Cf0KJGE/AdhUuYW7OjteKPhpJ+FkNTl4dlpVt9OMrKZG
SJEq7dLIACFPMCoe72V+8BoBUrSfmmX/azUKphgeo8GQ8irn08B5tU9N/R5uTfpflcnyUheZrz4A
EqlrV613kbQe6DjcGMF5ZxRS2BN0LiZZtS4gls0yE9fJEHCBqAocrWkLlgnAYOfOO+BZLOwlzXkG
k9S4F1ZiiWbMz1fVUTducKzgldKufK8Su1W84Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3664)
`pragma protect data_block
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
jznLp5QB4mYi
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
