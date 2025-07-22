`include "config.vh"

module moduleB (
    data_from_B,
    data_to_B,
    b_extra_in,
    b_extra_out
);

    // Port width localparams follow the convention PORTNAME_BITWIDTH
    localparam DATA_FROM_B_BITWIDTH = `DATA_FROM_B_BITWIDTH;
    localparam DATA_TO_B_BITWIDTH   = `DATA_TO_B_BITWIDTH;
    localparam B_EXTRA_IN_BITWIDTH  = `B_EXTRA_IN_BITWIDTH;
    localparam B_EXTRA_OUT_BITWIDTH = `B_EXTRA_OUT_BITWIDTH;

    output [DATA_FROM_B_BITWIDTH-1:0] data_from_B;
    input  [DATA_TO_B_BITWIDTH-1:0]   data_to_B;
    input  [B_EXTRA_IN_BITWIDTH-1:0]  b_extra_in;
    output [B_EXTRA_OUT_BITWIDTH-1:0] b_extra_out;

endmodule
