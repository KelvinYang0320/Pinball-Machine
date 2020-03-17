

`define play_vga_audio 2'b01
`define init_vga_audio 2'b00
`define win_vga_audio 2'b10
`define loss_vga_audio 2'b11

`define init 4'b0000
`define wait_for_play_button 4'b0001
`define playing 4'b0010
`define hit 4'b0011
`define no_hit 4'b0100
`define win 4'b0101
`define lose 4'b0110

`define play_audio 3'b001
`define init_audio 3'b000
`define win_audio 3'b010
`define loss_audio 3'b011
`define play_fast_audio 3'b100
`define hit_audio 3'b101
`define miss_audio 3'b110
module final_project_top( 
    input wire clk,
    input wire play_button,
    input wire pay_button,
    input wire hit_button_0,
    input wire hit_button_1,
    input wire hit_button_2,
    input wire hit_button_3,
    input wire rst,
    output wire [3:0] DIGIT,
    output wire [6:0] DISPLAY,
    output reg [3:0] tracks,
    output reg [3:0] tracks_led,
    output reg [4:0] blood,
    
    //VGA_______________________
    output wire [3:0] vgaRed,
    output wire [3:0] vgaGreen,
    output wire [3:0] vgaBlue,
    output wire hsync,
    output wire vsync,
    //audio__________________________
    output wire audio_mclk, // master clock
    output wire audio_lrck, // left-right clock
    output wire audio_sck, // serial clock
    output wire audio_sdin // serial audio data input
);

wire clk_div26;
clock_divider #(26) cd26(.clk(clk),.clk_div(clk_div26));
wire clk_div23;
clock_divider #(23) cd(.clk(clk),.clk_div(clk_div23));
wire clk_div16;
clock_divider #(16) cd1(.clk(clk),.clk_div(clk_div16));
wire clk_div13;
clock_divider #(13) cd3(.clk(clk),.clk_div(clk_div13));
// clk_div26_one

    
wire [3:0] state;
reg [3:0] reg_state;
assign state = reg_state;

wire [3:0]counter_0;
reg [3:0] reg_counter_0;
assign counter_0 = reg_counter_0;
wire [3:0]counter_1;
reg [3:0] reg_counter_1;
assign counter_1 = reg_counter_1;
wire [3:0]counter_2;
reg [3:0] reg_counter_2;
assign counter_2 = reg_counter_2;
wire [3:0]counter_3;
reg [3:0] reg_counter_3;
assign counter_3 = reg_counter_3;
display_7seg( 
     .clk(clk_div13),
      .counter_0(counter_0),
      .counter_1(counter_1),
      .counter_2(counter_2),
     .counter_3(counter_3),
     .DIGIT(DIGIT),
     .DISPLAY(DISPLAY)
    );
    
wire [7:0] ball_counter;
reg [7:0] reg_ball_counter;
assign ball_counter = reg_ball_counter;
reg hit_button_detect;
reg pay_button_detect;
reg [3:0]hit_signal_translate;
    
    
always @(posedge clk_div23) begin
    reg_counter_0 = ball_counter%10;
    reg_counter_1 = ball_counter/10;
    reg_counter_2 = 0;
    reg_counter_3 = 0;
    case (state)
        `init : 
            begin
                blood = 5'b11111;
                tracks = 4'b1000;
                tracks_led = 4'b1000;
                reg_ball_counter = 3;
                reg_state = (rst) ? `init : `wait_for_play_button;
                
            end
        `wait_for_play_button :
            begin
                tracks = (tracks == 4'b0001) ? 4'b1000 : tracks >> 1 ;
                tracks_led = (tracks_led == 4'b0001) ? 4'b1000 : tracks_led >> 1 ;
                reg_ball_counter = (~play_button) ? ball_counter - 1 : ball_counter;
                reg_state = (rst) ? `init : (ball_counter == 0) ? `lose : (blood == 5'b00000) ? `win : (~play_button) ? `playing : `wait_for_play_button;
            end
        `playing : 
            begin
                tracks = tracks;
                tracks_led = tracks_led;
                //reg_state = (hit_button) ? `hit : (no_hit_button) ? `no_hit : state;
                reg_state = (rst) ? `init : (hit_button_detect) ? (hit_signal_translate == tracks) ? `hit : `no_hit : state ;
            end
        `hit : 
            begin
                blood = blood >> 1;
                reg_ball_counter = ball_counter + 2;
                reg_state = `wait_for_play_button;
            end
        `no_hit :
            begin
                reg_state = `wait_for_play_button;
            end
        `win :
            begin
                tracks = 4'b1111;
                tracks_led = 4'b1111;
                blood = 5'b00000;
                reg_state = (pay_button_detect) ?  `init : `win;
            end
        `lose : 
            begin
                blood = 5'b11111;
                tracks = 4'b0000;
                tracks_led = 4'b0000;
                reg_state = (pay_button_detect) ? `init : `lose;
            end
    endcase
end
always@(posedge clk)begin
    case(state)
        `init : 
            begin
                hit_button_detect = 1'b0;
                hit_signal_translate = 0;
                pay_button_detect = 1'b0;
            end
        `playing :
            begin
                if ( hit_button_0 == 1'b0 || hit_button_1 == 1'b0 || hit_button_2 == 1'b0 || hit_button_3 == 1'b0) 
                    begin
                        hit_button_detect = 1'b1;
                        if (hit_button_0 == 1'b0 ) hit_signal_translate = 4'b1000;
                        else if (hit_button_1 == 1'b0 ) hit_signal_translate = 4'b0100;
                        else if (hit_button_2 == 1'b0 ) hit_signal_translate = 4'b0010;
                        else if (hit_button_3 == 1'b0 ) hit_signal_translate = 4'b0001;
                    end
                else
                    begin
                        hit_button_detect = hit_button_detect;
                        hit_signal_translate = hit_signal_translate;
                    end
            end
        `lose : 
            begin
                if (pay_button == 1'b0) pay_button_detect = 1'b1;
            end
        `win : 
            begin
                if (pay_button == 1'b0) pay_button_detect = 1'b1;
            end
        default :
            begin
                pay_button_detect = 1'b0;
                hit_button_detect = 1'b0;
                hit_signal_translate = 0;
            end
    endcase
end
//____________VGA_____________
reg [1:0] state_for_vga;
always@(*)begin
    case(state)
        `init:
            state_for_vga=`init_vga_audio;
        `win:
            state_for_vga=`win_vga_audio;
        `lose:
            state_for_vga=`loss_vga_audio;
        default:
            state_for_vga = `play_vga_audio;
    endcase
end
reg [2:0] blood_for_vga;
always@(*)begin
    case(blood)
        5'b00000:
            blood_for_vga = 3'd0;
        5'b00001:
            blood_for_vga = 3'd1;
        5'b00011:
            blood_for_vga = 3'd2;
        5'b00111:
            blood_for_vga = 3'd3;
        5'b01111:
            blood_for_vga = 3'd4;
        5'b11111:
            blood_for_vga = 3'd5;
        default:
            blood_for_vga = 3'd5;
    endcase
end
vga(.clk(clk), .rst(rst), .state(state_for_vga), .blood(blood_for_vga), 
.vgaRed(vgaRed), .vgaGreen(vgaGreen), .vgaBlue(vgaBlue), .hsync(hsync), .vsync(vsync));
//____________audio_____________
reg [2:0] state_for_audio_reg;
wire [2:0] state_for_audio;
wire [11:0]ibn;
always@(posedge clk)begin
    case(state)
        `init:
            state_for_audio_reg=`init_audio;
        `wait_for_play_button:
            state_for_audio_reg=(state_for_audio==`init)?`play_audio:((state_for_audio==`hit_audio||state_for_audio==`miss_audio) && ibn>=12'd40)?`play_audio:state_for_audio;
        `playing:
            state_for_audio_reg=`play_fast_audio;
        `win:
            state_for_audio_reg=`win_audio;
        `lose:
            state_for_audio_reg=`loss_audio;
        `hit:
            state_for_audio_reg=`hit_audio;
        `no_hit:
            state_for_audio_reg=`miss_audio;
        default:
            state_for_audio_reg= `play_audio;
    endcase
end
assign state_for_audio = state_for_audio_reg;
music(.clk(clk), // clock from crystal.rst(rst), // active high reset: BTNC 
    .state(state_for_audio),
    .audio_mclk(audio_mclk), // master clock
    .audio_lrck(audio_lrck), // left-right clock
    .audio_sck(audio_sck), // serial clock
    .audio_sdin(audio_sdin), // serial audio data input
    .ibeatNum(ibn)
);
endmodule // 

   


    
 







