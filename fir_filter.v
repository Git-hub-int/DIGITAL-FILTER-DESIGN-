module fir_filter(
    input wire clk,
    input wire rst,
    input wire [7:0] x_in,
    output reg [15:0] y_out
);

    reg [7:0] x1, x2;
    parameter b0 = 1, b1 = 2, b2 = 3;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            x1 <= 0;
            x2 <= 0;
            y_out <= 0;
        end else begin
            x2 <= x1;
            x1 <= x_in;
            y_out <= b0 * x_in + b1 * x1 + b2 * x2;
        end
    end
endmodule
