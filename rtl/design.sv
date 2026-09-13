module binary_to_gray (
    input  logic [3:0] binary,
    output logic [3:0] gray
);

    // Binary-to-Gray conversion:
    // MSB is unchanged; each lower Gray bit is the XOR
    // of two adjacent Binary bits.
    assign gray = binary ^ (binary >> 1);

endmodule
