module full_adder(a, b, carry_in, sum, carry_out);
    input logic a;
    input logic b;
    input logic carry_in;
    output logic sum;
    output logic carry_out;

    logic sum1;
    logic carry1;
    logic carry2;

    half_adder ha0(a, b, sum1, carry1);
    half_adder ha1(sum1, carry_in, sum, carry2);

    assign carry_out = carry1|carry2;

endmodule