module alu8(a, b, opcode, result);
input logic[7:0] a,b;
input logic[2:0] opcode;
output logic[7:0] result;

logic[7:0] ar_result;
logic ar_carry;
logic sub;
logic[7:0] b_eff;

assign sub = (opcode == 3'b001);
assign b_eff = sub ? ~b : b;

rc_adder add0(a,b_eff,sub,ar_result,ar_carry);

always_comb begin
    case(opcode)
        3'b000: result = ar_result;
        3'b001: result = ar_result;
        3'b010: result = a&b;
        3'b011: result = a|b;
        3'b100: result = a^b;
        default: result = 8'b0;
    endcase
end


endmodule