// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jan 20 17:41:35 2020
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top brd_c_addsub_as_invert_and_delay_0 -prefix
//               brd_c_addsub_as_invert_and_delay_0_ brd_c_addsub_0_0_sim_netlist.v
// Design      : brd_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "brd_c_addsub_0_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.1" *) 
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
eY0wS7AydpkCyoPpx40+r/CA+hQ521U37s1wSiS2hPLP3PXqD/7BqWFssGt8VKhiX+yUr6rDQ4q4
2sS1kTiIgL8L/iisSeZ6lKtweGW4QeuSUFNNfvIMZ45pm65Gn/Qfs5i+GBTDbMM8BMVyHxJDEDDX
J9gaCzNGu4TyPKTCDdtO8iYNL70BnXDTv95nl6HY+OES4E0mQ17Pc5CbtOVcUF8gryu+NdxNFZaC
Q1lCcFnptX1M9SFIDOlpE3RPA1FsxaQcKD1Mn+WZXX9e1zZak164DJ1Uj0ZiwzOa5mYI+eUTU12Q
jli9KZdY+OmNTkuCU8mMdRtHnXxrJwZqyKVGiQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5RWypHzgqDLHXeAHJFgPmexj/p6dCFliBkp7DBra7QkJzhIkwrcYXWyFa0DuKqZvi8wDpaQTs/oW
zaWL4BNJP/yocZ1M5fxUCUoZWJekuf8henE7hwA89hWBRjRQ+22DyqJq9vqSIdLSyolMicaUla3r
gGDTGuVo4JLD2tpPaJk1gxpu00f9TObfCC199oY7WMRTNYoCgGShxKwDOFDbCB+KQj6PYJKUwbqg
YWRbpXrtZwBLxgAgxJiYzXL0usWPugetqhrHNwHtX0ZwBiKYTCL+QpW380y4DiRZfd8M1JfvHpTU
+d25eplCKVLRbkRiqWdwqrvBfPG9BRFQrDERHw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3664)
`pragma protect data_block
s18iLrZMWd0suD+Z6bSpB++PPBGv3qYG8nvH8XLTh8oVfhi4/08EU1QsJu+0JMFX2RpS8/Oiuuu3
i12Vbk+nkq5VwWMHfafn+/c5YOUH6h39eGjn1O7+LQIN1tvtBpKLgzP9TdhJMCCChX89mI5qE9+W
mQh/t3tFz93C05s9kJvYwKGpcGn7AEtb/pTq0fU+uQhNiXHwlgrqiRLWyTYT45mF0Iz/DpDmPbSd
FdVn3Jq7ebmlBhlcusFmm9zfkPSXioGqrXzLeRsYm+7jfzvv4OPh13doPcahDAxOFG8qWIPpqSVd
6ILYHVooPva0VsUrRr+p35fvVL5dW0vDY76dKLTyUtBwSTCeeFdDi+sNd1EUL4ZKhf+UnDzrh0LV
22IZNcJKo2XE2eiXRSSean1A8AaDiXZ+rcSVlSNevkOUAc0hY5G9mFZiQUxeCNS4IhkJazRqFH7b
NPVervbs7PrySAgZRq+PaVqs39rs8erleUo/w1zUk65oxnUYBas1PbTbYcnpdqnL1H1IshknrYs7
/bSYm6cBseyUJychFjsC/5da1evVFLYJhxXuetgzoldtl9S9RyxetNvdtKewDeKlMsRVr0BLikPH
ylhb0f/ilSIBpOtzl+Pbtt3nAIaC0MxZDWlzKHpIYzoaT2ZVaC9VtD9cQmEbrn+0wiPYwVeN+/jC
RhzlE2/KCtB4cjinb0ilSO4WimcVYij6kGjRB5STo4sCTg4XeD/Qcm3JaOw+rFhxAe02tpV8m3Af
gUzxQbGJFoF7cb5mEdYe+jtmbvSsBsp066DuKKlkZKi6SwEDLDoQtdJ8FejTiiSuB7cpLLQlltQs
1z/BttMvSwoFvcMo5O5Lslbo0gbGfJ9tY6Rf1gtR0spZxjCvsTclN7/bGnLp5Dwd9PWmdCa51psm
8fM6rt8f1lga+csrfucPMw+lZDnH4KtfLVeElFkAmWCT48hm7OJBsmicRO6ZqvQFd/nbLJNA5O7/
ps8EckgnjODGcw5THB3BGYXrUUwNd3vP+F+MgbUAkLN/mtmwPbUMO86NetV3lqzTFsIZUfaFgA7E
SFqQjzIT1b3I33dHUisbxBqYfaPh5k8I1Ij/oGu74MeDfAGOYFfTrUvigWAb37m8cDJw0oePQzwZ
k63NgmCGSsMWKeCXGjaexWgi4P3V0wcZ9f+hBp08eTQd9ssYf7AoqRVo4qTyXlxLV5A7J9P0aOCm
q9/XggMqJbcmygWm4mMPa/43sed1raNh1kxUtYd95eNPLuk3mBN9q2gZ8H02Z/i7Uh8JjYkrN1Iq
443OIMXlRi1ytPMXwtTb3luDTQk0RjkWoJBLqZS/oFlPHVZSNG2e3Vlqb31IqCTB20/bt6A5bje3
IytA371TTxAZ2IeGbj/GWMKCIQrhbDh3nHPMQdBJvbccineEcI2deZWZC4nRs352Kl9l/VT5vUz6
YYlXTZf4M7LEufIugHG21Vre0F5UrPxuWcqcfPEQtrgpEDg+uKnHcBCxL77Zp16qJWO3gn+3gRML
a/nlzF3yvuY2nv027/wHMoP1XSYy4clIWVOujgshhcR/3jVc+p6PVH41iYjPvNFhKsL/5xGIkD9F
pzYBBq27GlPwvUxIwgCmXdbsd5n4QzFzuOCvLg0Avgb9EVH3VW8EmFp5ZFV/S0LpSuE5QzdOH2tm
VEl0gL0/MHzHeO8leIjQaO3ZaH51KgTbVSvdrlSSbX9y52i1Jt4oCu3Cih55OfKwqWvjwiMd3eav
8dGasYdAsue0d9Ec6QJZseCq624m6a0duFsosXyypE+yXe9g4u9DsWN/2YRtZ7ETr6jDxQuKYAdr
s8Gs6Ex+sUn+aR/QBzpmHXtCIbAKDhLTyxej2ex7T/tuSgqsZJnTR2s+pQ387ByV3PX2+1MrF8Nd
y7uZkNDRWgufjd6Ih3+8dz5oFlwes1iPA0MpaZ8Eemjgzd3tF63Gq4cqpw/25D4bX0duGd7O+KgW
t7Etjfw5QoC8n7oNzRtn2lZtNOZ2ThDScm4Ikv2+zJCHa4mTtmLFP324H+nKiPmwcqi4GUCLc236
8/UesYxsRmTkUNyrNKw/6hEaC2WzTbc++GpS6a0eepNqZyHyEhgKhA/1+c2MKbF+BbVaidY6QjY6
0pt2mVC8UF7IwjDGmF3Rjtv7YdxuCpe1xsfqFztLF7aCBcelItwfkTKbeha5ipi04Fp+U19Zj4Dh
woTugdR1dXFEf89HitFMywy3Q+DJ9NfojDS42mUunJWrEu6FOEyL1ZCEE/jaqNOv5LsJXZvrG+cv
26OdZXflFmGgQz+FPv5RliGvTsN/NfiscE779JCZMC3L2QSUSRfDSZ6BI/v2zQLgwb5PtW1I36Y6
sz6/I7kZQ9K/AMdRzgp9reDjM/E9KiCDP8QvMW4aksJP8/vwD2fuJnBhNoBLVrNdoh0U3JPaiR7u
CbtxPL1CWP4+l1EXm8ugUqYehYZrTGBgh6UUrQUMQbwOf1zNENnDum8p4JuaJKcrre5O3k6kc2Xm
kBVMK14LDJctP6KwLdvuXn0tNZ1ETLmWUS3sWDrFOboUrwm6O7Fg1hPMQtJSVc2OfckUn+OfZ503
4jzFAWnMrDZOKAnQXKGsPDLoN30bjgST7q+Rh9ZOKCU4cEjmpkZMqjrfgXGAUl0tMi9gkIsjNVN9
JmvyjktTTeYtFuy+kQ/lcXc5ZPefRHrj5sCVlC4oQYA/6QPeUPg5ussgjqAPK1EbXrNIBCc1414O
H4E8sQmCs3E30FB9nu9CvtQlVh+Hg85/6tH0NCopqeGqBd/a9U+L64sgSepn2h2xXad4AzrXOehr
YS1k0RThUTNfIKQF0AJksswfzsIIDYWoRBtslnIW3MV1NeeSpngW6/E1bQ3jittuh6nBo1Ac+RSs
B+P4IsTAAduRSiN+k1OxQPJxg+LwNL7qt5ZQZknX+chmqwVidAKrrlKJgWbjS6niy0oEk9222B8E
AZGc0r2mRE2pJAwULitSJd9l2+HUhlSiEAj9s5hIYBaevudNx0P2rvBSHvKch/1T18SUw1auD6PP
ht9ByyVQ9yJ0E3ODkbShm+3z2+ylq8fTkZohuMYMws9ZIw4hM+wn6LdNR2TONsKhFWwPnVhoGImB
XAnF3jDdg2K2/fSj1YYHJSTxKZnLSUNCeQS86sUa+gF5jNULuhNZV6zZVlSti0GxAsD3Va7eRMYk
PKfIkjqfuTntTHtOehLU+QhTMSMhHCNGP2oFemzPEllzz/FYC5nc1yPJkHajxadUEGiZkKqeGlW4
dazwEDPB0M6ah+edNkkJrLdKkODvUGwzSKEOwwTzpMQtZ9l4mlDPtNCPffsLuYfV4+maQ9a+1rI4
uoQDiN7Gc2AwwV5k7BAnSjqwDUVltlJq+78xYGD94ijylX6gXhHhyN6aa/zm8zmowEWR47xLsQjg
7hpSaezaszEGDyF76lxr/UOvDRjmXYrNjMxmy1BZvlK781/Kj79ILeX55YY/TXWhFIK1HP7E5Qc7
EH27Os7hljgeYF/lLom4z+R1Y7Jk9f5z6G2AMRoEdtRiv1otz4hx/j1so6VCeHmoYxOWkLqUAvvW
bxQU7GiCYNx9PZG8xkydoflonYEXM8+WzvQ5UsB1cTbhqg7pCigLYAxMXaqJwMi2HhP57jK3YpUE
GQXSA0+zUabcjILNFIVuijPhKwVvwLG9h1INilmzT6gLnHtbO3XJ15syA5VXsL3gKA/pEnaFJTOm
W/1FSh1VrCmaXJ8RdYkkZIigjJpZakVaWd9Z0qRtm4F9qoyg9FzqNaW/s4+POTHFn1E8pSKTziDX
x/rAJlNAeXb8qZPwnNUCvSs4E4FV5EHmBt0lEfMUifAlVRAbN4wKUt6QA/uQ6Tj64AgBDJXkd8NW
c93EhFJ5orOj0wi12IhbVRb2lbT/uDWr9wbQQeIN+zPqTqMzkkHpTZmibey1pjfM9c6xRH51RknV
9PMvOxOc5Zdk/7miwXvyOPGXojA9wJzy2UtgkwxNJAbolENL9/d5/SUdYzymfC6NqQMWjiVmNrCu
G2BPVbRj+YUciGtyl8+/Ga6K3LmyPXakCWoFWkb+covTChMbelGf8xvO5lOXjWteLy13leux7Aj2
q9mpCY4SaBVXTR7olWyYnHkZhvy4Zsx66g9jVG6yqumjhhXffykxSu/J+tyXiM7D29quyZxxNlx0
nKqC1HgQJ3gJroy2NK05kBjMISN2DHf83v9yf7Okdug3JFPbA0yLl24NZfdbLsAHjZJ9gUuhk43e
/9S6EfKUD4OalQ+sve34AIJyexVPeRdLl39YvyBV+glDxJssTFwGXZlhX0odrlEL046DUOj5YFiD
BB/BdWV93LZ4z4gRiUNAm+7RW0E62XMXI41Gl540lWg7MMYjLWb+3aGqxeyU7gst8LKmg/oIZguG
RdxpcdJNCOgxjQ4FIHlYqkNSN86WoWUSnRbFptInGWdnzicTcW2OMNyHNyt2cKioZnQgAWjbVeAm
LcyE2CE9cWV/3VJrKpifdvISbJPMdKYoMQCFXhTL/8kqC/oggHd+gzidvsOf5JO6+y6+52pqNq09
soSfpVv3MiOZMvhrXPp2HPcHDxBu7PNEz3+PfCJuHTRxcxswIwdB4smxfn4AbKdONucvlgw2KJWD
Y1PmVe3f89AjSwqHit+axH91NNGFpwxA4tV3iR6S8FGs0MoXBLTg0q9mwT6e7B2ZNGK95ofQI4tV
PThCahxKZrYHXR6wo3FPlYXQa/QxYU4ybQe4lMuXMtSRon+yYd3j9ZZ1vD87VK3jwW4l3f5tD5aX
y2rwXL/XjiSJ
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
