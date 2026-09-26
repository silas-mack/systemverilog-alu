module half_adder_tb;

    logic a, b, sum, carry;

    half_adder ha0(a, b, sum, carry);

    logic [1:0] result [3:0];
    initial begin
        result[0] = 2'b00;
        result[1] = 2'b10;
        result[2] = 2'b10;
        result[3] = 2'b01;

        for (int i = 0; i < 4; i++) begin
            a = i[0];
            b = i[1];
            #1;
            if({sum, carry} == result[i]) begin
                $display("pass");
            end else begin
                $display("a=%b b=%b sum=%b carry=%b, expected: sum=%b carry=%b", a, b, sum, carry, result[i][0], result[i][0]);
            end
            //$display("sum = %b", sum);
            //$display("carry = %b", carry);
        end

        $finish;
    end
endmodule
    