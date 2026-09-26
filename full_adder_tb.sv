module full_adder_tb;

    logic a, b, carry_in, sum, carry_out;

    full_adder fa0(a, b, carry_in, sum, carry_out);

    logic [1:0] result [7:0];
    initial begin
        result[0] = 2'b00;
        result[1] = 2'b10;
        result[2] = 2'b10;
        result[3] = 2'b01;
        result[4] = 2'b10;
        result[5] = 2'b01;
        result[6] = 2'b01;
        result[7] = 2'b11;

        for (int i = 0; i < 8; i++) begin
            a = i[0];
            b = i[1];
            carry_in = i[2];
            #1;
            if({sum, carry_out} == result[i]) begin
                $display("pass");
            end else begin
                $display("a=%b b=%b carry_in=%b sum=%b carry_out=%b, expected: sum=%b carry=%b", a, b, carry_in, sum, carry_out, result[i][1], result[i][0]);
            end
            //$display("sum = %b", sum);
            //$display("carry = %b", carry);
        end

        $finish;
    end
endmodule
    