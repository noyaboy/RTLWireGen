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

    module_a u_module_a (
        .data_from_b (b_to_a),
        .a_extra_in  (a_extra_in),
        .data_to_b   (a_to_b),
        .a_extra_out (a_extra_out)
    );

    module_b u_module_b (
        .data_to_a (b_to_a),
        .data_from_a   (a_to_b),
        .b_extra_in  (b_extra_in),
        .b_extra_out (b_extra_out)
    );

endmodule
