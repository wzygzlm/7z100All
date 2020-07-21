// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jul 20 23:48:12 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
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
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 9.999e+07, PHASE 0.000, CLK_DOMAIN brd_processing_system7_0_0_FCLK_CLK0" *) input CLK;
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
HxnY52wJDEJyaDmjyDwLW4IIzIUB5DfVbaCi0aPSuwKVzgD+9XTsf0jAGGMS+PKC3+293JrOYveV
Mp+fla8uGM1jRAeGwK/13f660p2Uk+UFSrqYbNm4WppiWRaSiSt4AjSbOfzh1/pNzZO0XOs4S7P6
3KDJPENhHTBVAYqTZTnj/OZmlAvAsBzl7TyXcYvLu6+VUcxSJGNKmIkwee5SRD1SI8jTj0GBz3YR
FTBDyI9QFqyUVYqJpj+LYs8jvH3UPWrfb+MQYxnykpSv6HMiY6ZB4Uqnd6GWOGjWTEaijPw+l6p9
NVI/2haQRQ/E4E77cjADOtk52TI8YAiekxI20A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
p38tYVVKlkEgwPLH54ruwzIQ/h6pxwkzk7qjLKTHs8YJ1NrryJeTI2qwHyi/AC5C4l80hrckO4GL
i6gb3fGaNN7PgVrmfRqShLHkNzY+yeaDsYHgz+ksxAcFR/7+avPz75nMCxHJflipO9lJevibVPBG
o7FynI2BdP9RIF50R1el23/RjqM1eiYkKSBH7rmD1tnfwsdNDFvDfppRlq3QKB2CdvYyIQTFJyh0
cIp18SRXKGTErLP1jPKKb0sbzmlGVmL+RaSj9/szsfupobq0uCaqUO6Eq8h5ECgzy01xZYiwqUvH
/VFkhqs4JolfSlztAIz6p3QJusQzn6wf9GcBlg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3904)
`pragma protect data_block
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
FKm91SamcHKBB9vOhen6qIYL/0EzgJP8FKZMLg==
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
