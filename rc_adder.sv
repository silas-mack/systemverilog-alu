module rc_adder(a,b,carry_in,sum,carry_out);

    input logic[7:0] a;
    input logic[7:0] b;
    input logic carry_in;
    output logic[7:0] sum;
    output logic carry_out;

    logic [8:0]carry;
    assign carry[0] = carry_in;

    genvar i;
    generate
        for (i = 0; i<8; i++) begin
            full_adder fa0(a[i],b[i],carry[i],sum[i],carry[i+1]);
        end
    endgenerate
    assign carry_out = carry[8];

endmodule: rc_adder