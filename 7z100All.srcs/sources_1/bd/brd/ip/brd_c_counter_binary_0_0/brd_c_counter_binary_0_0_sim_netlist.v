// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jan 14 18:19:08 2020
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/PhD_project/vivado_prjs/davisZynq/7z100All/7z100All.srcs/sources_1/bd/brd/ip/brd_c_counter_binary_0_0/brd_c_counter_binary_0_0_sim_netlist.v
// Design      : brd_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module brd_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 8}" *) output [7:0]Q;

  wire CLK;
  wire [7:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  brd_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module brd_c_counter_binary_0_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [7:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  brd_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
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
D6nh4FoOQ/6MHOWYdEyFChhe8CYq0ERoCmBOT8p8Ypz5S60Bvs4wR+1ruOZdRHgrnpTulFdPI0Ci
x1+PAIHvhI9eyfIIoUdbadiK+P/NGzz69AlNF8ar1bomy7hUsWorUQnO3NRKrzeeKkKvUBfNg6XK
AP0JHQe4zmVvx+9SfCCkspPaPPj9leAB7GulmocJ6X3V//kFNzFcp4CxIWkY8/D7hMVFVDVR974e
vBhcFBSB2vm/1PwjSrPzu6qGX1xAfhyfnoy24rQaf1jCWy0w5Wl1SBs0P9I1inxCBiNrqr5qXpm1
nju/u7D97+i1R/c8P2ffkqSqLVJgK62Ng98ohg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xtI6d2WOnseXVJ9ZklgEIL0PdWw5hGtqJ5PPBl8d3jRHLLJocI/gjdWJqElB2Im4TKQDzVddd9AD
CEJmmNmvV1GdRHoo/yehvwVLSy6dRoWvRY5VFJP8JTQhcnE8/q6Ms41Wgrk+ILcitzHoBqxK2Nxm
CFP+MXwSihyN9Q/fxCZeKPcR+Z3PP9bREQURhCxdRiw5M0yySxW0c86eiDmYsAOoK5Wy1lX9vUS5
WC0oYSMw5gZ6blc0A+k+Wzf0jC7HwS9vcm1MY6Tzp0JuM4nYI6nIKEaNp0+WVdkoYyMeoiYq8ygz
rKBEw80HJzdSVxvuo2aKhXV/sSBE8kCRh0nlIw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6576)
`pragma protect data_block
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
e0LKUsy7LuiAkJ6tQQwuFUPwIpZD
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
