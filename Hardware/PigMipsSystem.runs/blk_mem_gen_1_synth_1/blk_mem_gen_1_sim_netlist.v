// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jun  3 17:38:45 2023
// Host        : LAPTOP-JNSJ8DCA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Download/CPUandSOC/PigMipsSystem/PigMipsSystem.runs/blk_mem_gen_1_synth_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [12:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
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
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.53475 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "6145" *) 
  (* C_READ_DEPTH_B = "6145" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "6145" *) 
  (* C_WRITE_DEPTH_B = "6145" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 50768)
`pragma protect data_block
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
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
