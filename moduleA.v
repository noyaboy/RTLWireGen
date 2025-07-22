`include "config.vh"

module moduleA (
    input  [IN_FROM_B_WIDTH-1:0] data_from_B,
    input  [A_EXTRA_WIDTH_LP-1:0] a_extra_in,
    output [TO_B_WIDTH-1:0] data_to_B,
    output [A_EXTRA_WIDTH_LP-1:0] a_extra_out
);

    localparam IN_FROM_B_WIDTH = `B_TO_A_WIDTH;
    localparam TO_B_WIDTH      = `A_TO_B_WIDTH;
    localparam A_EXTRA_WIDTH_LP = `A_EXTRA_WIDTH;

endmodule
