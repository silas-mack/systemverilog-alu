module rc_adder_tb;

    logic[7:0] a, b, sum;
    logic carry_in, carry_out;

    rc_adder rca0(a, b, carry_in, sum, carry_out);

    logic [8:0] result;
    initial begin

        for (int ci = 0; ci < 2; ci++) begin
            for (int ai = 0; ai < 256; ai++) begin
                for (int bi = 0; bi < 256; bi++) begin
                    a = ai[7:0];
                    b = bi[7:0];
                    carry_in = ci[0];
                    result = ai + bi + ci;
                    #1;
                    if({carry_out,sum} != result) begin
                        $display("fail");
                    end
                end
            end
        end

        $finish;
    end
endmodule
    