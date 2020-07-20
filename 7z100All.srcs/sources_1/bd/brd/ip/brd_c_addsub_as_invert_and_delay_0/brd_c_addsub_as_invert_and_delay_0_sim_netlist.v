// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jul 20 21:18:34 2020
// Host        : mbp-win10 running 64-bit major release  (build 9200)
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
Ml+IPvlSI1y6VNIe2TFhiCiBe9VTp1PDXHeKv7mUK/0B/wFYyc2WGrAIhLe81VxvDD5ZhPt6Y5Bc
EHQNQhBVKVFFNTqT5cC05AVHDh5zsrwpqNuuqVfnBX+BHqku2atq0oeXvbD4EsBtSOpk+9qd89L+
9aKw7CBN2oVyqNJZRWcF/DH6XIJMXIpT4D1DzUJng4p0XQQynJtHj7ECJXlaA4071eyHi5ihBLc7
H06/xbzrUF0gza70NE/KjLCcEfeUQZlFY0XB1t6H0Cz3rvm6svn+uVcOU8kaxk84okBOPouw3uhb
wM8G7mEoMzl+sj9ETFRa9cV7CseF/5NkMA5uMg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D2T3006ohTOCKBrOTm7K+GmyAHDoG0jK/1FUJ6MiUi5kSPd+tPCIJzJbY0cKO2cWtPhpebNw5kmF
80F3DJNFo5AFWzuu/isktQhadbEBP3Jfj8oZpR6WhG1CbTWFQL8OK8Jydk2Aj+YesrSWXrNS4GRN
NII9gQ/B0E0bS/XqFXK3qdwQOSIKgRqd/3Vwcui/Ukonn2qShFgOn4zo0VO1GHZpCwzmOS8dXscO
9SEUqdqZVIzj6SS8XBASfg4GwY3vR1ft9BAgZmZLUkVDKb6YXM9Z0EwMyY4V6rHY+WoQACgGjlNI
lIVgIckU02wBNMWgJB0Jy2YDK92VggFtJTy2Hw==

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
