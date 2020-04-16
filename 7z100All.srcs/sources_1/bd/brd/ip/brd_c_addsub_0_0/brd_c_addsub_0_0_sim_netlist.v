// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Apr  4 15:32:17 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
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
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 99989998, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]S;

  wire [0:0]A;
  wire CE;
  wire CLK;
  wire [0:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
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
        .CE(CE),
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
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
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
  wire CE;
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
  (* C_HAS_CE = "1" *) 
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
        .CE(CE),
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
fDmUwpPKdpxtUk8dMCfS15aNVeGqGOsg0qnxMazLtIdPciraWR8VWq9Jgcs6WbSbEA4vdSvEy47y
40B/Xpb7UcafgCiSEqagnCgWq6pT8S18Ag4HDxcx86Ub2mH8nlu8HhC4yF4viIyezQ6qdA7vH/Op
tB6EZHsJJZltnEk15u3AF2kV18HeWymnE8wGVHevzsNLtDmGS08biQfZDlUfjBl0p6BQdrawZSpc
Azw5XVglmON0d0Pivm2SH4SW/JfJoBWa7vb6L+0ComaklKkiqLU8g/xAhsRK2jXAnJvdyFTGsWYq
ZxU5gpv/9TVW6M47RDmCPWYwDxo9KTcut4XeBA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
esfPhI0iUqi778/SCbeHULdhSSl/IzIgQpyUMMDvYGc1ovS3Ok8Qwrl/RrOdGkcPX07l6F5HxHzs
JCcBzSlpaUSrN8Q3yrbScmWkwoNSDnXfdP1g8UbGo5joKYnYrkQuSbKcR+e2K6k0s9sqfsDRSORC
uavNwQBWaBdH5n5jflmW+LOMEd3xYnNdXYyrkOCW618Bwibvbo+or34RRHorfh92J1TpQnPlVN9f
M7exbDtEv9BttS6Ndqqx3J59ZbYNwIIafBBuQVGDMf7FanfUKBBykUYwh2AimfhMZIvqPi8EP/VB
2ouwCHo5MTQ8DXPajo4/9oWWC6GjuQrbVRTeJQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3872)
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
