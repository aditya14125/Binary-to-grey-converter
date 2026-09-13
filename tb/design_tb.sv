`timescale 1ns/1ps

module binary_to_gray_tb;

    logic [3:0] binary;
    logic [3:0] gray;
    logic [3:0] expected_gray;
    integer i;
    integer errors;

    binary_to_gray dut (
        .binary(binary),
        .gray(gray)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, binary_to_gray_tb);

        errors = 0;
        $display("Binary  Gray  Expected  Result");
        $display("------  ----  --------  ------");

        for (i = 0; i < 16; i = i + 1) begin
            binary = i[3:0];
            #10;
            expected_gray = binary ^ (binary >> 1);

            if (gray !== expected_gray) begin
                $display("%b    %b    %b      FAIL", binary, gray, expected_gray);
                errors = errors + 1;
            end else begin
                $display("%b    %b    %b      PASS", binary, gray, expected_gray);
            end
        end

        if (errors == 0)
            $display("\nAll 16 test cases PASSED.");
        else
            $display("\n%d test case(s) FAILED.", errors);

        $finish;
    end

endmodule
