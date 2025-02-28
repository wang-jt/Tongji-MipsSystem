/////////////////////////////////////////////////////////////////////////////
//��Ȩͬѧ Я�� ������V3ѧԺ ���Ĵ��� Xilinx FPGA������ϵ��
//����Ӳ��ƽ̨�� Xilinx Artix7 FPGA 
//�����׼��ͺţ� STAR ����FPGA�����׼�
//��   Ȩ  ��   ���� �������ɡ�����ǳ����תFPGA�����ߡ���Ȩͬѧ��ԭ����
//				����STAR�����׼�ѧϰʹ�ã�лл֧��
//�ٷ��Ա����̣� http://myfpga.taobao.com/
//�����������أ� http://pan.baidu.com/s/1kU4WWvH
/////////////////////////////////////////////////////////////////////////////
module seg8(
			input clk_i,		//ʱ���źţ�100MHz
			input rst,	//��λ�źţ��͵�ƽ��Ч
			input[31:0] gpio_out,	//�������ʾ���ݣ�[15:12]--�����ǧλ��[11:8]--����ܰ�λ��[7:4]--�����ʮλ��[3:0]--����ܸ�λ
			output reg[3:0] dtube_cs_n,	//7�������λѡ�ź�
			output reg[7:0] dtube_data	//7������ܶ�ѡ�źţ�����С����Ϊ8�Σ�
		);

//-------------------------------------------------
//��������3
    wire rst_n=~rst;
   reg clk=0;
   reg [1:0]clk_count=0;
   always@(posedge clk_i or negedge rst_n)begin
        if(!rst_n)begin
            clk<=1'b0;
            clk_count=0;
        end else begin
            clk_count<=clk_count+1'b1;
            if(clk_count==2'b11)
            begin
                clk<=~clk;
            end
        end
   end

//�����λѡ 0~3 ��Ӧ���
parameter	CSN		= 4'b1111,
			CS0		= 4'b1110,
			CS1		= 4'b1101,
			CS2		= 4'b1011,
			CS3		= 4'b0111;

//-------------------------------------------------
//��ʱ��ʾ���ݿ��Ƶ�Ԫ
reg[8:0] current_display_data;	//��ǰ��ʾ����
reg[7:0] div_cnt;	//��ʱ������

	//��ʱ������
always @(posedge clk or negedge rst_n)
	if(!rst_n) div_cnt <= 8'd0;
	else div_cnt <= div_cnt+1'b1;

	//��ʾ����
always @(posedge clk or negedge rst_n)
	if(!rst_n) dtube_data <= 8'h0;
	else begin
		case(div_cnt)
			8'hff: dtube_data <= (gpio_out[7:0]|8'h80);
			8'h3f: dtube_data <= (gpio_out[15:8]|8'h80);
			8'h7f: dtube_data <= (gpio_out[23:16]|8'h80);
			8'hbf: dtube_data <= (gpio_out[31:24]|8'h80);
			default: ;
		endcase
	end
		

	//λѡ����
always @(posedge clk or negedge rst_n)
	if(!rst_n) dtube_cs_n <= CSN;
	else begin
		case(div_cnt[7:6])
			2'b00: dtube_cs_n <= CS0;
			2'b01: dtube_cs_n <= CS1;
			2'b10: dtube_cs_n <= CS2;
			2'b11: dtube_cs_n <= CS3;
			default:  dtube_cs_n <= CSN;
		endcase
	end
endmodule

