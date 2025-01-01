module barrel_shifter (
    input [7:0] data_in,     // 8-bit input data
    input [2:0] shift_amt,   // 3-bit shift amount (0-7)
    input [2:0] op_code,        // Mode selection for operation
                            // 000: Logical Left Shift
                            // 001: Logical Right Shift
                            // 010: Arithmetic Left Shift
                            // 011: Arithmetic Right Shift
                            // 100: Rotate Left
                            // 101: Rotate Right
    output reg [7:0] data_out // 8-bit shifted/rotated output
);

    always @(*) begin
        case (op_code)
            3'b000: data_out = data_in << shift_amt; // Logical Left Shift
            3'b001: data_out = data_in >> shift_amt; // Logical Right Shift
            3'b010: data_out = data_in <<< shift_amt; // Arithmetic Left Shift
            3'b011: data_out = $signed(data_in) >>> shift_amt; // Arithmetic Right Shift
            3'b100: data_out = (data_in << shift_amt) | (data_in >> (8 - shift_amt)); // Rotate Left
            3'b101: data_out = (data_in >> shift_amt) | (data_in << (8 - shift_amt)); // Rotate Right
            default: data_out = data_in; // Default: No operation
        endcase
    end

endmodule