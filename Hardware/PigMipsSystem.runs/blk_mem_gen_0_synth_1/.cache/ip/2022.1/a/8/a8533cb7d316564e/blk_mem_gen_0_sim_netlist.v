// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jun  3 17:38:45 2023
// Host        : LAPTOP-JNSJ8DCA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52000)
`pragma protect data_block
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
5/Ji6hYuQFVADCLeSgD0hA==
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
