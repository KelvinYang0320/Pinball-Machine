

module debounce(
    output wire pb_debounced,
    input wire pb,
    input wire clk
);

reg[3:0] shift_reg;

always @(posedge clk) begin
    begin
        shift_reg[3:1] <= shift_reg[2:0];
        shift_reg[0] <= pb;
    end
end

assign pb_debounced = (shift_reg == 4'b1111) ? 1'b1 : 1'b0;
endmodule

module one_pluse( 
    input wire pb_debounced,
    input wire clk,
    output reg pb_1pluse
);
reg pb_debounced_delay;
always @(posedge clk) begin
    if (pb_debounced == 1'b1 & pb_debounced_delay == 1'b0)
        pb_1pluse <= 1'b1;
    else
        pb_1pluse <= 1'b0;

    pb_debounced_delay <= pb_debounced;
end

endmodule // 
