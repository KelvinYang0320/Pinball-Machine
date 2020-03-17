`timescale 1ns/1ps
`define play_vga_audio 2'b01
`define init_vga_audio 2'b00
`define win_vga_audio 2'b10
`define loss_vga_audio 2'b11
module clock_divisor(clk1, clk, clk22);
input clk;
output clk1;
output clk22;
reg [21:0] num;
wire [21:0] next_num;

always @(posedge clk) begin
  num <= next_num;
end

assign next_num = num + 1'b1;
assign clk1 = num[1];
assign clk22 = num[21];
endmodule
module vga_controller (
    input wire pclk, reset,
    output wire hsync, vsync, valid,
    output wire [9:0]h_cnt,
    output wire [9:0]v_cnt
    );

    reg [9:0]pixel_cnt;
    reg [9:0]line_cnt;
    reg hsync_i,vsync_i;

    parameter HD = 640;
    parameter HF = 16;
    parameter HS = 96;
    parameter HB = 48;
    parameter HT = 800; 
    parameter VD = 480;
    parameter VF = 10;
    parameter VS = 2;
    parameter VB = 33;
    parameter VT = 525;
    parameter hsync_default = 1'b1;
    parameter vsync_default = 1'b1;

    always @(posedge pclk)
        if (reset)
            pixel_cnt <= 0;
        else
            if (pixel_cnt < (HT - 1))
                pixel_cnt <= pixel_cnt + 1;
            else
                pixel_cnt <= 0;

    always @(posedge pclk)
        if (reset)
            hsync_i <= hsync_default;
        else
            if ((pixel_cnt >= (HD + HF - 1)) && (pixel_cnt < (HD + HF + HS - 1)))
                hsync_i <= ~hsync_default;
            else
                hsync_i <= hsync_default; 

    always @(posedge pclk)
        if (reset)
            line_cnt <= 0;
        else
            if (pixel_cnt == (HT -1))
                if (line_cnt < (VT - 1))
                    line_cnt <= line_cnt + 1;
                else
                    line_cnt <= 0;

    always @(posedge pclk)
        if (reset)
            vsync_i <= vsync_default; 
        else if ((line_cnt >= (VD + VF - 1)) && (line_cnt < (VD + VF + VS - 1)))
            vsync_i <= ~vsync_default; 
        else
            vsync_i <= vsync_default; 

    assign hsync = hsync_i;
    assign vsync = vsync_i;
    assign valid = ((pixel_cnt < HD) && (line_cnt < VD));

    assign h_cnt = (pixel_cnt < HD) ? pixel_cnt : 10'd0;
    assign v_cnt = (line_cnt < VD) ? line_cnt : 10'd0;

endmodule
module mem_addr_gen(
   input clk,
   input rst,
   input [1:0]state,
   input [2:0]blood,
   input [9:0] h_cnt,
   input [9:0] v_cnt,
   output [16:0] pixel_addr
   );
    
   reg [8:0] position;
   //196 147
   assign pixel_addr = 
   (blood==3'd0&&(v_cnt>>1)<50&&(h_cnt>>1)>260)?(320*((v_cnt>>1)+60)+ ((h_cnt>>1))%320)% 76800//blood = 0
   :
   (blood!=3'd1&&blood!=3'd0&&(v_cnt>>1)>50&&(v_cnt>>1)<100&&(h_cnt>>1)>260)?(320*((v_cnt>>1)-50)+ ((h_cnt>>1))%320)% 76800//blood = 2
   :
   (blood!=3'd1&&blood!=3'd0&&blood!=3'd2&&(v_cnt>>1)>100&&(v_cnt>>1)<150&&(h_cnt>>1)>260)?(320*((v_cnt>>1)-100)+ ((h_cnt>>1))%320)% 76800//blood = 3
   :
   (blood!=3'd1&&blood!=3'd0&&blood!=3'd2&&blood!=3'd3&&(v_cnt>>1)>150&&(v_cnt>>1)<200&&(h_cnt>>1)>260)?(320*((v_cnt>>1)-150)+ ((h_cnt>>1))%320)% 76800//blood = 4
   :
   (blood!=3'd1&&blood!=3'd0&&blood!=3'd2&&blood!=3'd3&&blood!=3'd4&&(v_cnt>>1)>200&&(v_cnt>>1)<250&&(h_cnt>>1)>260)?(320*((v_cnt>>1)-200)+ ((h_cnt>>1))%320)% 76800//blood = 5
   :
   (blood==3'd5&&(v_cnt>>1)>50&&(v_cnt>>1)<100&&(h_cnt>>1)>260)?(320*((v_cnt>>1)-200)+ ((h_cnt>>1))%320)% 76800//blood = 5
   :(state==`loss_vga_audio && (v_cnt>>1)>50&&(v_cnt>>1)<190&&(h_cnt>>1)>60&&(h_cnt>>1)<260)?
   76800+28812+((196*((v_cnt>>1)-50)+ ((h_cnt>>1)-60)%196)% 28812): 
   (state==`win_vga_audio && (v_cnt>>1)>50&&(v_cnt>>1)<190&&(h_cnt>>1)>60&&(h_cnt>>1)<260)?
   76800+((196*((v_cnt>>1)-50)+ ((h_cnt>>1)-60)%196)% 28812):(320*(v_cnt>>1)+ ((h_cnt>>1)+position)%320)% 76800;  //640*480 --> 320*240 
   
endmodule
module vga(
   input clk,
   input rst,
   input [1:0]state,
   input [2:0]blood,
   output [3:0] vgaRed,
   output [3:0] vgaGreen,
   output [3:0] vgaBlue,
   output hsync,
   output vsync
    );

    wire [11:0] data;
    wire clk_25MHz;
    wire clk_22;
    wire [16:0] pixel_addr;
    wire [11:0] pixel;
    wire valid;
    wire [9:0] h_cnt; //640
    wire [9:0] v_cnt;  //480
    
    wire en;
    assign en = 0;
  assign {vgaRed, vgaGreen, vgaBlue} = (valid==1'b1) ? pixel:12'h0;

     clock_divisor clk_wiz_0_inst(
      .clk(clk),
      .clk1(clk_25MHz),
      .clk22(clk_22)
    );

    mem_addr_gen mem_addr_gen_inst(
    .clk(clk_22),
    .rst(rst),
    .state(state),
    .blood(blood),
    .h_cnt(h_cnt),
    .v_cnt(v_cnt),
    .pixel_addr(pixel_addr)
    );
     
 
    blk_mem_gen_0 blk_mem_gen_0_inst(
      .clka(clk_25MHz),
      .wea(0),
      .addra(pixel_addr),
      .dina(data[11:0]),
      .douta(pixel)
    ); 

    vga_controller   vga_inst(
      .pclk(clk_25MHz),
      .reset(rst),
      .hsync(hsync),
      .vsync(vsync),
      .valid(valid),
      .h_cnt(h_cnt),
      .v_cnt(v_cnt)
    );
      
endmodule
