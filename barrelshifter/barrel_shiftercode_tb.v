`include "barrel_shiftercode.v"

module tb_barrel_shifter;
    reg [7:0] data_in;         // Input data
    reg [2:0] shift_amt;       // Shift amount
    reg [2:0] op_code;         // Operation code
    wire [7:0] data_out;       // Output data

    // Instantiate the barrel shifter module
    barrel_shifter uut (
        .data_in(data_in),        // Connect testbench signal to module port
        .shift_amt(shift_amt),    // Connect testbench signal to module port
        .op_code(op_code),        // Connect testbench signal to module port
        .data_out(data_out)       // Connect testbench signal to module port
    );

    initial begin
        $dumpfile("barrel_shifter.vcd"); // Specify the name of the VCD file
        $dumpvars(0, tb_barrel_shifter); // Dump all variables in the testbench
        
        // Test cases
        $display("Time | data_in | shift_amt | op_code | data_out");
        $monitor("%4t | %b | %d | %b | %b", $time, data_in, shift_amt, op_code, data_out);

        // Logical left shift (op_code = 000)
        data_in = 8'b10101010; shift_amt = 3; op_code = 3'b000;
        #5;

        // Logical right shift (op_code = 001)
        data_in = 8'b11001100; shift_amt = 2; op_code = 3'b001;
        #5;

        // Arithmetic right shift (op_code = 010)
        data_in = 8'b11110000; shift_amt = 4; op_code = 3'b010;
        #5;

        // Rotate left (op_code = 011)
        data_in = 8'b10011001; shift_amt = 3; op_code = 3'b011;
        #5;

        // Rotate right (op_code = 100)
        data_in = 8'b01101110; shift_amt = 2; op_code = 3'b100;
        #5;

        $finish; // End simulation
    end
endmodule


