// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Mar  9 12:01:25 2020
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
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
BdVAoaRPGMVKbZT+QVNoEyL3qaZSEjLtP/RBqZ1qjEbF0Ljp7SpciyvQVpo/srBVePEBXxwHVtFg
FMstFcNfmyJ6/n4ZZVFeZDmDqPp9QHmb5WiPTmMFXdYWAYZFQGoQbUw7h/hZRfqywNHhv9MSkSZC
uaC2+PIrf56U93PbLJc6I6Qp5rhJWmd/rTjYEmgmWoU1RhwgYAXrlVAiaod7NGJcc5jlJLrP2vqY
F5CwGoqRv2vZ4UbkEfJpmXoYkcSWuWNJInBQEMC9g3vfB6aaTygrgr+tlVV4I3QR+AwdYOU/IKdD
fGSIlRu2u9t6qzQgH+7YCGOHZEbfCtXivH/PmA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mduVnX/CRNa6rZE7yUUAAdP1/PwBQSZZspdgo85TE3/Alyxb3FSCvE9NKYhr7VcSrkmeaL+CalAI
ATQf6OxZ/sMb5XwPDKrgvMNo00R9ILlPP6H1l1K8rp1cYh4Q5trEoWHVWSYsCYE+k1R/Wu1g6gAB
jbL45oF3+1PXxSrA0rTcwwqj2KRTcYVKldpyZIEv5EwoDjSlzhBZHlZytiaMXk0rWWU09vKlq7f6
HmmGl9PRROovjF3UAMCYrWJn2AhCtoee+pJNXmDWB3LuySlspjyiHLbFt0kLBLlCl+kocBNMAUW2
J3qjNH20UZcbIc/Qz6Y7p5R7DW7N9LP3BQo8Aw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3696)
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
