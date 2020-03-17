

module display_7seg( 
    input wire clk,
    input wire [3:0] counter_0,
    input wire [3:0] counter_1,
    input wire [3:0] counter_2,
    input wire [3:0] counter_3,
    output wire [3:0] DIGIT,
    output wire [6:0] DISPLAY
    
    );
    
reg [3:0]reg_DIGIT;
assign DIGIT = reg_DIGIT;
reg [6:0]reg_DISPLAY;
assign DISPLAY = reg_DISPLAY;
reg[3:0] BTC;



always @(posedge clk) begin
case(DIGIT)
        4'b1110 : begin
        reg_DIGIT = 4'b1101;
        end
        4'b1101 : begin
        reg_DIGIT = 4'b1011;
        end
        4'b1011 : begin
        reg_DIGIT = 4'b0111;
        end
        4'b0111 : begin
        reg_DIGIT = 4'b1110;
        end
        default : begin
        reg_DIGIT = 4'b1110;
        end
    endcase
end

always @(posedge clk) begin
    case(DIGIT)
        4'b1110 : begin
        BTC = counter_1;
        end
        4'b1101 : begin
        BTC = counter_2;
        end
        4'b1011 : begin
        BTC = counter_3;
        end
        4'b0111 : begin
        BTC = counter_0;
        end
    endcase
end

always @(*) begin
    case(BTC)
        4'b0000: reg_DISPLAY = 7'b0000001; // "0"     
        4'b0001: reg_DISPLAY  = 7'b1001111; // "1" 
        4'b0010: reg_DISPLAY  = 7'b0010010; // "2" 
        4'b0011: reg_DISPLAY  = 7'b0000110; // "3" 
        4'b0100: reg_DISPLAY  = 7'b1001100; // "4" 
        4'b0101: reg_DISPLAY  = 7'b0100100; // "5" 
        4'b0110: reg_DISPLAY  = 7'b0100000; // "6" 
        4'b0111: reg_DISPLAY  = 7'b0001111; // "7" 
        4'b1000: reg_DISPLAY  = 7'b0000000; // "8"     
        4'b1001: reg_DISPLAY  = 7'b0000100; // "9" 
        4'b1010: reg_DISPLAY =  7'b0110000; //"E"
        4'b1011: reg_DISPLAY =  7'b0101111; //"R"
        4'b1100: reg_DISPLAY =  7'b0110001; //"C"
        4'b1101: reg_DISPLAY =  7'b1100000; //"D"
        4'b1110: reg_DISPLAY =  7'b0001000; //"A"
        default: reg_DISPLAY  = 7'b0000100; // "9"
        endcase
end
endmodule // 