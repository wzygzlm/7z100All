// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Mar 17 13:16:39 2020
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
WyznVq+HRe5aJo5Jjy8lSI02KKsczrp9ZoughxwB6HaYrFryklZ0jSM4n86UimFZxTZwGdRb/0Ul
vOenej0k/tEslrlgA1NCei7XKYLtr1dFBw2LXkjZCIBlbDPe43teqBlLsaCirSEGJLw+Dni4nAey
5xZntiQ/oM4UsBfLGI5Qk79JkhDbCP66ZPxq+pynva4qkB3ee5y3CrvnY5yZlrjeEqVY/iQGc1rq
VmOiuLYGyhCNzbLa10rbAxYHfciZu38Tiv7sESzZrXg/+Fe8MQ9lDT7e+3Yn9XcMKrjA6OvlBf71
JqT5XM1Z49APlE6uhRdG/wONgGzaDhN1RJl7iw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3/LsCnu6pFk/HJ22a5vHLGYM9fclM2zABW1t7OojK7xAqClGphYsmrgJNWzy4INcMI4tLtLdrhjf
6KwgS2CdiMR4rnvwCLFxe7+RzRvZwI8AD5UUwrovaqDJGh5N1+SZrLbbQSF2j5ZoOk/Upw9zQ2Ix
8d6Q0NwbAC+dyJ24kHL8Nx31NcYokJzFUwe6EbsC5YWz4ygZH4pmxPgCy5Jax3l0uY8LXbwr5HPd
Fj8VQ5YmPozEgFRnzpL+q7xF/ZuTJApshV2w/pwkRLg0jClIB6YsZjqP1/KkwcJI48ejEzfvTCiz
KnUOp62rWnJvRmoSCwqpbII6J459R8+fBGAtIA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3872)
`pragma protect data_block
NwYUxqnatRRhrJAy20Zb2j8uUyl/7d0u8fbPnFViASbx2hAjjf32cptw7IbJC/uKcMKCD6VCXTO1
5GKd95JVanbLCQtyeXeru+mYoA75pvWJRubonx7RQF33GCDb2VceIAYeg1Es70cHyFAIW7mZbdCb
4XtiybbUz22czuTOhCTaknQ8XR6CcL/TBlTJNzzGwgG4mVPdlgKjxu3CALBn6lvtyjf3pYXtr7EO
atWhvMnJvU2q64srsHDL5t5+cdlQEfJePo77wBjyMMtfQT4q+sGMKEUGz/B76YRmsPO01vnafcXh
Uk1oXdoIz/IdGs8IPcdSOheFu6puI7VEDGWSxZQY8iLimgIVSTsej6hAWqRQ4tOBXLzqpnjNfPtt
KxdWjVaftlIBdhJpPfN2uFUpKWb86fD1jaQOy/47dwYsUYlspsrIoNGhDMINthxT+S2wEzFVCQQ9
Un4EWb/FzUZA2jY6YTpRSwKj/vSqUdQzx5EVj1KjmTU5lxpFGk1kbENHrsF1cYUNEsL2FSTGBCHP
A+eJvoxSQOpUZUi4H045IuOuXH+OG0Xwib73wrQo2QvUdiz19ZxhRDrutln/UtHOs1H6R9qon2mV
7BU6Il0FdNUt9o6a9gA8y1Hnb8ZKrf1KKXrK8w3svTDupHluWR8dFGycBcw+RlH+yIUypEqxBEhS
QryZZXIvttKONcdIRFQBe4yOFZuZ9o3gNL+m1UG9AAAGlG1wcgK314YBYIaiSMJl+Q5b2ACQGQpj
teUgOsCp+77kUNwHT3Pq5Nes+oGvwJlaCFuZZlsYQ0pfzsPDCaZUcQWPIUyjdAfLJ+r7w2y5dFZx
CiuWND2DHZ1hcg2ft3Z0X9QC8hzq/D1H1qU6rsqMS6O1bxxynG/knIvkp/k0jk4ZX9X9WCUUeeEB
pyJ9+yBN5BtpCs6w8GYcX+WNCQzFoQAVSf/rWiLp2AFXAZ1ArC4VR4IUrB9E0VhWh6OaHZvP2w9W
DdTdg/MH3hb1G44kfJHV7YwA2Xfv3nWXF4fahC5+VHjZzIUQtlCNPdBq48vy7CQe679FQxf+9Jup
6fXonJ8mTGjIeKnvx+0Wc5qO2V6pVClsdrE0uS6MMj4wtVgTEl3YOhDJRfUQkTk4LTmLBJtD+Krf
9NRcDX31027IWLIVtlKNVsEuzh8O/9B+gdmwkMc2361UcVTMdrhUKJeNtAW8wHeup0ysLNrb2uHR
T5m1zns4r5XxqoSdX5epyGZooQ0sijGD5X/kf/3jhDX0PN6Bn8bEB19ZQuSKfrbMFsoLSYDAAaaf
fhtdEgGE+7JYOXMvOSbvMTg8RWJiDUM6zjo1C9BsUujvJlBdOeKLPHEcZ0eRnPPethuenKhENi5C
6Z9k5ZzhiAfj2MNQBwfE78I8OsC48zSmHbGnWi6fqQpndL0GCD4c8mKt/CfgN44t5psIIxFdaGAV
bBlAGJ/qnWIlexyNbZvq/9u39S9a4cDVRvPx1iyYXP72qx/GQTykV86L/pIM63L5JPfRoMUwxSAV
Tbh2t1ScCxHfweqbUQrn5kZiRLYmbkgIR4VfwHmwZPzUC/TSPrnXXztvOVnp2+K1Hbl+3A/hgXba
TsGaZ7o588/JbGhZUBkT3RDgBAPtclWiT63+6eyCLmPEz1Tt8W03qK9ax2PV9lbpSM8gou+x8oqU
L5l+uSFvibFzLZ1jpgb/p0g8+oBE7Hen3rAjx/exJ9VyhyRq8hkqY2FpaUG+4kE5k+PDC2esxfJu
Ft1tOrqKUSDqEeZukY6SU6bLUqTlrvOjQ30OQCNW4EhPuUrNxIFWXSmFKC3ygsSfXHUgkwmVmbHW
XpwxAI+0z3GSltGPB5fDuqeXnJWXrUuFWDX9Kx6Tdy6xQGOymLU2fIuaFnX1ANIwEddzBwQqK94L
pr2GHF9mdhDkale5Ek8RkoGsZd6TtQQRH1TEHzU4fW3B5CciAmiCGRcH3+uMh3bUhos7u3eGIyFM
uRUPT591noM60NPRNFgHNSIsOnslJ8D13YzQT5TjZ7eBUnp9Z2V0fWtiRNKA+e3E45cPtU+yHZef
b7AQsxhpf2lqNHe/0NnPzcIrWh0H0sjH3gI9jhFHacdjYGsDXSdVvgB/3Q4WyEis3s3BdD10E0CJ
N7I+J13GlJg2L+w4cKsA+jIUR900GxAq5DwiaF6EOHLMsTPFTSYqNWSt1EcYxWOSDykDjgrN5ZTf
OS2ZASi0QutMAN+xMMLguf/crnECL4g3V1sDzv54G6ban/MHjLjY8RLIcmDwH6AaUCZ1bKJJw+ev
e0wI2oiQmaoZJd13mCPk7eF/5BjHUks6+JYxaGm3rY+hEIR/OYXUFUuCLU19FJZ9CKdyvihmT4Zb
FJZ5q22OskrdCuo9neMfld0EH+RbH5h+H+ADNNHiXU4elssnRfm3R41UMpelZq/v+lbjD2XFIJIa
SiTEs1kzJY/KLr12327xcT8crVbB0f1K99eOTunRoErnG4DbV+0qi/1bmaPGt5136FVUkAmPn6EN
HWW3vJxUAgXL/OkC3MIw213xgFRWzZKX5tXE8YUgN0Hj0pz1l9JuwDPv9MAun1pSWtxAIRKsSDi2
eSPj+CGWpr9XdKX/Z5ux+vH7iioPImNREe6Wg54BlxzXjfeuiHNnK0xQOb6MYjxdwwHQ+wyY7knt
9IADcwxRS6YmvDlBV6B/tDARn69zsBEkXCWWka6h/mWbsBKNut7bYfVWmCHlbE4rK8qieW0gUo7K
7oAolmArpgI6mHcbMUmGRJoJQIYqFQQei7FvXpHk4DZx3sFcey+/Zv+N9dPa1HOAVX8z7hrseem1
pU4JefM9uBTpR5xlvfg2mrNG4EyTFXv06UM+VJx6ZpZgy6bacDaBo+0m7wYQEaOuzWSDXt6UyrKU
a6Bi1h01z+eNruYqMGobUTMKvJezAfuue2efW8HdAyvFnM+2vvfhsdBO3PrjYk/Riljv8ihMKzVg
rLbhcVwsNl0ZK+D1yba3MOCXvjEyCW4j5yi0fjL28lVxV5tmE7W0p2hsGUJZXwvCP3fgWVbgWwEf
ZQ51ojRx5461l5PiPjBUTDdPAV2N8xVJmkiWijcv2GhrYMlR9QQjqtG3LvQthvcithjrq6vgDIY3
zeKYGhn19QG8800Iip6lo/SzWQBF4g79eICW4sxt7JmXdSzQxAgXIyj0O9OaPYyjn+2oO2x7qKf2
OA29rhzz4RE8ZOAnZd4tI85nuJsx19ZvCksTARbRQseARhb54s7ItDUN/b2Zlrx2PWkr/IhgfyWB
e1VPhmsSmI2l99r4DNEp4Bf5siVp8ouEbfokbDXz9MtgnmmOGijXUyLHI6d8LH0myusWuwdIxVJO
7dGIK8uPliLGasKA77wgZg0jQNbM34SMvozs1jlgKXFFN2Z4qYAJEA7SNJzeAPbzcF7KSRn4aH4Q
g+wW2UwQQvBgaVPqFA5f8TMoERb8K5SFJw7q1baNLYQON8BZ6zPuCaEx+DEHj/g8jX03dHmqHN4F
/abVrpffAD2W+JRBE2G3chwo9rXaIjdsB6I56IK062cARqKlRgnPqIv8oC/jmY5KDG74vBjDyUra
mZn87X0Fy7kIM8xL0fhJQi3mYtpgHzRbpI2kLuR3A8LtM4YPmFGRujuCL5i6szMb6FGcIe1vP8Fx
q4yJzrCe6Hz816x5JyUa36FmzYEE2/CeTebvS2AO/1XnoxmiAw/RWR3HPOAsFSRazf2iOSyklzjJ
7Ky9CibcIIB9iEWZUOP3nl1AJFT9qvcumv/NxsA0nGNXSZVOVBb4+svXpO8S2updH2rWTs6VpFcU
AYVo5RINs/nEfd8ZU8Z6fPSPFdvL7RHX94jfS7frvDWUvbTH9/NQHYywPuyFU1Qt+xlxB661lEzO
UGNJ1Ik/jk7JL9rvQUhJqD0sHSND8QqV1nlLQW5wcKmzq5x2IgLOggMB674TcSchlp9B4DQzuKAy
Q0C7IrYkFxoUH+1G8ZAs3YaZ3KVBENmuQcSINYhpx5gen0jWKsUVo36uHStiv5gn2HcCV3+5B4ed
qDmUcgcSL1Rjd6P1FgEJcig8o8X8VqLPFOxODRjtImZOxzvssZUi3AezN0FEpIx9m/dUvupYil7q
EBN43n/UpsXfkWSwO/6vMfH1YO+D20eWhB86nCHdqHEa9PKgh3QkMxtY5nNwfnITaIe5M8PnQQez
lmfU4WSWSbMeicjs8pjhBdsnrhP+kC4HKbxM9p4m97mwd7SkCBzsvrGMVOQAtMUaDMtGkJzm1nY0
P9bv7vX5CkaJ8Ulejq8ajIgakmVfnLI7GjEFQgdwBXGKWK9ENxeSY0VpP8VsSUeKlMd0ltjUM7B0
LkXCCrTcy+Qd66qap1sI+U8ga18/CPXKZeLbkeEDJp62hbu2VRxqunVxjh6imFZ1O9EkEmhAFR8n
pS0hIzfZuqnuxXbjWgMCB5BewWlGxH3sw/7Xc3POvsQYjjciqEFaMuqZt7wcH1nquSLCC3dB+7OD
aBXUr+mI9VPSC0B4LYHAlyYAxzVlbS7fFJubyS9pU860xZGRU48lldFFycOZsgKxgfS+lAsiylRu
GcatDW3jOH7LLNFpaYr2r/Ni7kMbH0ldWsM3Aww/5BZ+I0/L9Tws5l9ZiGiwtk4cQhvZnWdFws3I
KhtcH7fj4aLyYFJUb7yAZuoK9uhkHxb9Ym4MXpc7gLW7NhdoyLeiTNOd6M16pBrmG5AKE1GnW7Tk
XkLE2boc2mg3DNlV4eTQzxHgEY8Aq/kwRPwF5i2ABd/FRftgtdc2VlyZS9sv8qQ9fHEdF1iGkcge
3TyX7TdTUG7NJX3IwIFu0ewsfTe0Ez5r4f8640C8MX0a/Tvp+QJiyH/hPOc7Lrqm41ltnCJQhsIP
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
