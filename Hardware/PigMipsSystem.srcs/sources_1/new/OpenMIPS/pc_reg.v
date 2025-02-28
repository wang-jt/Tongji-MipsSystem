`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/09 22:56:25
// Design Name: 
// Module Name: pc_reg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include"OpenMIPS.vh"

module pc_reg(
    input wire      clk,
    input wire      rst,
    input wire[5:0]  stall,     //���Կ���ģ��CTRL
    input wire      branch_flag_i,
    input wire[`RegBus] branch_target_address_i,

    input wire      flush,
    input wire[`RegBus] new_pc,

    output reg[`InstAddrBus] pc,
    output reg      ce
    );
    always@(posedge clk) begin
        if(rst==`RstEnable) begin
            ce<=`ChipDisable;       //��λ��ʱ��ָ��洢��������
        end else begin
            ce<=`ChipEnable;        //��λ������ָ��洢��ʹ��
        end
    end
    
    always@(posedge clk) begin
        if(ce ==`ChipDisable) begin
            pc<=32'h30000000;       //ȡ�õ�һ��ָ���ַΪ0x30000000
        end else begin
            if(flush==1'b1)begin
                //�����ź�flush==1��ʾ�쳣����������CTRLģ��������쳣����
                //������ڵ�ַnew_pc��ȡִָ��
                pc<=new_pc;
            end else if(stall[0]==`NoStop) begin
                if(branch_flag_i==`Branch)begin
                    pc<=branch_target_address_i;
                end else begin
                    pc<=pc+4'h4;
                end
            end
        end
    end
    

endmodule