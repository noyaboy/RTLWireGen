`define A_TO_B_WIDTH 8
`define B_TO_A_WIDTH 16
`define A_EXTRA_WIDTH 4
`define B_EXTRA_WIDTH 12

// Per-port bitwidth macros derived from the common configuration above
`define DATA_FROM_B_BITWIDTH `B_TO_A_WIDTH
`define DATA_TO_B_BITWIDTH   `A_TO_B_WIDTH
`define A_EXTRA_IN_BITWIDTH  `A_EXTRA_WIDTH
`define A_EXTRA_OUT_BITWIDTH `A_EXTRA_WIDTH
`define B_EXTRA_IN_BITWIDTH  `B_EXTRA_WIDTH
`define B_EXTRA_OUT_BITWIDTH `B_EXTRA_WIDTH
