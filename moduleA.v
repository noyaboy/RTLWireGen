`include "config.vh"

module moduleA (
    data_from_B,
    a_extra_in,
    data_to_B,
    a_extra_out
);

    // Port width localparams follow the convention PORTNAME_BITWIDTH
    localparam DATA_FROM_B_BITWIDTH = `DATA_FROM_B_BITWIDTH;
    localparam A_EXTRA_IN_BITWIDTH  = `A_EXTRA_IN_BITWIDTH;
    localparam DATA_TO_B_BITWIDTH   = `DATA_TO_B_BITWIDTH;
    localparam A_EXTRA_OUT_BITWIDTH = `A_EXTRA_OUT_BITWIDTH;

    input  [DATA_FROM_B_BITWIDTH-1:0] data_from_B;
    input  [A_EXTRA_IN_BITWIDTH-1:0]  a_extra_in;
    output [DATA_TO_B_BITWIDTH-1:0]   data_to_B;
    output [A_EXTRA_OUT_BITWIDTH-1:0] a_extra_out;

endmodule
