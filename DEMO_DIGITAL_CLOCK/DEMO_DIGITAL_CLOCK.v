module DEMO_DIGITAL_CLOCK (CLOCK_50, SW,KEY, HEX0,HEX1,HEX2,HEX3,HEX4,HEX5);
input CLOCK_50;
input [0:0]SW,KEY;
output [6:0]HEX0,HEX1,HEX2,HEX3,HEX4,HEX5;

wire[5:0]C1,C2;
wire[3:0]C3,C4,C5,C6,C7,C8,C9;
wire M;

DELAY_1SECOUND (CLOCK_50,1'b0,SW[0],M);

DIGITAL_CLOCK (!KEY[0],M,SW[0],C1,C2,C3);

BINARY2BCD sec(C1,C4,C5,HUNDREDS);
BINARY2BCD min(C2,C6,C7,HUNDREDS);
BINARY2BCD hrs(C3,C8,C9,HUNDREDS);

Hexadecimalto7Seg sec_ones(C4,HEX0[6:0]);
Hexadecimalto7Seg sec_tens(C5,HEX1[6:0]);

Hexadecimalto7Seg min_ones(C6,HEX2[6:0]);
Hexadecimalto7Seg min_tens(C7,HEX3[6:0]);

Hexadecimalto7Seg hour_ones(C8,HEX4[6:0]);
Hexadecimalto7Seg hour_tens(C9,HEX5[6:0]);

endmodule