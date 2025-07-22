`include "config.vh"

module moduleB (
    output [IN_TO_A_WIDTH-1:0] data_from_B,
    input  [FROM_A_WIDTH-1:0] data_to_B,
    input  [B_EXTRA_WIDTH_LP-1:0] b_extra_in,
    output [B_EXTRA_WIDTH_LP-1:0] b_extra_out
);

    localparam IN_TO_A_WIDTH   = `B_TO_A_WIDTH;
    localparam FROM_A_WIDTH    = `A_TO_B_WIDTH;
    localparam B_EXTRA_WIDTH_LP = `B_EXTRA_WIDTH;

endmodule
