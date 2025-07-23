`include "config.vh"

module module_b (
    data_to_a,
    data_from_a,
    b_extra_in,
    b_extra_out
);

    // Port width localparams follow the convention PORTNAME_BITWIDTH
    localparam DATA_TO_A_BITWIDTH = `DATA_TO_A_BITWIDTH;
    localparam DATA_FROM_A_BITWIDTH   = `DATA_FROM_A_BITWIDTH;
    localparam B_EXTRA_IN_BITWIDTH  = `B_EXTRA_IN_BITWIDTH;
    localparam B_EXTRA_OUT_BITWIDTH = `B_EXTRA_OUT_BITWIDTH;

    output [DATA_TO_A_BITWIDTH-1:0] data_to_a;
    input  [DATA_FROM_A_BITWIDTH-1:0]   data_from_a;
    input  [B_EXTRA_IN_BITWIDTH-1:0]  b_extra_in;
    output [B_EXTRA_OUT_BITWIDTH-1:0] b_extra_out;

endmodule

