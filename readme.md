# 8Bit ALU written in SystemVerilog
written with **No AI**!

## current implementations:
- Half Adder *ha0(a,b,sum,carry);*
    - working half adder
    - working testbench for every input-combination
- Full Adder *fa0(a,b,carry_in,sum,carry_out);*
    - working full adder utilizing 2x half adder
    - working testbench for every input-combination
- 8 Bit Ripple Carry Adder *rca0(a,b,carry_in,sum,carry_out);*
    - working 8bit ripple carry adder utilizing 8x full adder
    - working testbench for every input-combination
- 8 Bit ALU
    - working 8Bit ALU utilizing the ripple carry adder