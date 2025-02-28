// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jun  3 17:38:46 2023
// Host        : LAPTOP-JNSJ8DCA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Download/CPUandSOC/PigMipsSystem/PigMipsSystem.runs/blk_mem_gen_0_synth_1/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [127:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [127:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     12.7408 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "96" *) 
  (* C_READ_DEPTH_B = "96" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "96" *) 
  (* C_WRITE_DEPTH_B = "96" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[127:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51872)
`pragma protect data_block
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
M3w=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
