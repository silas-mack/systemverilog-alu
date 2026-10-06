module alu8_tb;

    logic[7:0] a, b, sum;
    logic[2:0] opcode;
    logic n, z, c, v;
    logic carry_in, carry_out;

    alu8 alu0(a, b, opcode, sum, n, z, c, v);

    logic [8:0] result;
    initial begin
        for(int i = 0; i<=4;i++) begin
            opcode = i;
            case (i)
                0 : begin
                        a = 0;
                        b = 0;
                        #1;
                        if (sum != 0) $display("failed");
                        a = 255;
                        b = 1;
                        #1;
                        if (sum != 0) $display("failed");
                    end
                1 : begin
                        a = 0;
                        b = 255;
                        #1;
                        if (sum != 1) $display("failed");
                        a = 0;
                        b = 0;
                        #1;
                        if (sum != 0) $display("failed");
                    end
                2 : begin
                        a = 0;
                        b = 255;
                        #1;
                        if (sum != 0) $display("failed");
                        a = 15;
                        b = 240;
                        #1;
                        if (sum != 0) $display("failed");
                    end
                default : $display("skipped");
            endcase
        end
        $finish;
    end
endmodule
    