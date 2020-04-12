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
LCi2N6itCG1e
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
