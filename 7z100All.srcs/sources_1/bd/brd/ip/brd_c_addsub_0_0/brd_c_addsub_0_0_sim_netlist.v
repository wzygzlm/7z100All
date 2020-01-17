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
P6zFWfDx0iXhn1t8KSIgtKUo/nM=
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
