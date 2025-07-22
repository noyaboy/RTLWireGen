`include "config.vh"

module top (
    a_extra_in,
    b_extra_in,
    a_extra_out,
    b_extra_out
);

    // Port width localparams follow the convention PORTNAME_BITWIDTH
    localparam A_TO_B_BITWIDTH      = `A_TO_B_BITWIDTH;
    localparam B_TO_A_BITWIDTH      = `B_TO_A_BITWIDTH;
    localparam A_EXTRA_IN_BITWIDTH  = `A_EXTRA_IN_BITWIDTH;
    localparam B_EXTRA_IN_BITWIDTH  = `B_EXTRA_IN_BITWIDTH;
    localparam A_EXTRA_OUT_BITWIDTH = `A_EXTRA_OUT_BITWIDTH;
    localparam B_EXTRA_OUT_BITWIDTH = `B_EXTRA_OUT_BITWIDTH;

    input  [A_EXTRA_IN_BITWIDTH-1:0]  a_extra_in;
    input  [B_EXTRA_IN_BITWIDTH-1:0]  b_extra_in;
    output [A_EXTRA_OUT_BITWIDTH-1:0] a_extra_out;
    output [B_EXTRA_OUT_BITWIDTH-1:0] b_extra_out;

    wire [A_TO_B_BITWIDTH-1:0] a_to_b;
    wire [B_TO_A_BITWIDTH-1:0] b_to_a;

    moduleA u_moduleA (
        .data_from_B (b_to_a),
        .a_extra_in  (a_extra_in),
        .data_to_B   (a_to_b),
        .a_extra_out (a_extra_out)
    );

    moduleB u_moduleB (
        .data_from_B (b_to_a),
        .data_to_B   (a_to_b),
        .b_extra_in  (b_extra_in),
        .b_extra_out (b_extra_out)
    );

endmodule
