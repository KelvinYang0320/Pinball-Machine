module clock_divider(
    clk,
    clk_div
);

    parameter n = 26;
    input clk;
    output clk_div;
    wire [n-1:0]next_num;
    reg [n-1:0]num;
    always @(posedge clk) begin
        num = next_num; 
    end
    assign next_num = num + 1;
    assign clk_div = num[n-1];

endmodule // 