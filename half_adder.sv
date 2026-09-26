module half_adder(a,b,sum,carry);

    input logic a;
    input logic b;
    output logic sum;
    output logic carry;

    assign sum = a^b;
    assign carry = a&b;

endmodule: half_adder