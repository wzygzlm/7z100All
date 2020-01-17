// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Jan 15 20:40:51 2020
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
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
NwC8bTews5JTFczlBhb6/NSz1gEehCpUeqXVz10GxLktHy5+XBX622llVKAD5METrMJ5GBoSMaCl
5AcdFY2xitUigXxwvKr5NbniYAkknU9IA6WgPSizqaAUJPELfqiquCxCM0xM0ajUxqKbyz3F8KDz
gU/S5mV4g32PvEVv0O3sorQUoUrp5FXtV6e204bFLErcWVcvLlfITAaRfHud6UFLqY7v5X2pIzWV
Zt/Sj207wiSSTjjab4oB6p+1NfNjoYKBoRrhfL0xHe1Tst9SFOMOIL1tdx3pNmemCQOhyFmau6m0
FCAVSRuLtpisGcpMwA8VYs5aVwcwc7vFpcfv9A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tjjr/QUYHLa8VZnmtajTXrWK1DufJUcr6bhYoNOHc++XFhiTmqpP9toELXZ1qs8zYaOnnQgTBl8x
itvp9mZY5F8PiY1dE6ILWrwGBdxyGdDhxE2+5MoRvYmB9UMnvY+TpsH249spGfhCA9kxAPDA9/If
6Izt7tZP8ULkpmKh1r/LycpLCP7NPpDsN3OieX0cMKHw1rEhMhd0Gl3tS6VIrb8Q9Bd4SANebL0/
bc/NGqJuzmPHw7BsC6w9KREwTG5obPaUBOWvbckNAlVjQF7+PBuclvh8dgLXd2L92PibGr6v1JLt
piOdn3QBxFBl/9itpg/3Ojm1rLo045LSDZqhXw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3664)
`pragma protect data_block
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
LOEUnVJN8rdAMmrLQhQeWrAXRZ4=
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
