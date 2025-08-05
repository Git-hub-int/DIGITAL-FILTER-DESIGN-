// testbench for FIR digital filter design 
`timescale 1ns/1ps

module fir_filter_tb;

    reg clk, rst;
    reg [7:0] x_in;
    wire [15:0] y_out;

    // DUT instance
    fir_filter uut(
        .clk(clk),
        .rst(rst),
        .x_in(x_in),
        .y_out(y_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        $dumpfile("fir_filter.vcd");
        $dumpvars(1, fir_filter_tb);

        rst = 1; x_in = 0;
        #10 rst = 0;
        #10 x_in = 8'd10;
        #10 x_in = 8'd20;
        #10 x_in = 8'd30;
        #10 x_in = 8'd40;
        #10 x_in = 8'd50;
        #10 $finish;
    end

endmodule
