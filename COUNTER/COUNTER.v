module COUNTER(clock, reset, enable, mode, Q);
parameter N=8;
input clock, reset, enable, mode;
output reg [N-1:0] Q;

always@(posedge clock)
	if(reset == 1) Q=0; else
	if (enable == 1) 
		case(mode)
		0:Q=Q+1;
		1:Q=Q-1;
		endcase
		else
		Q=Q;
		
endmodule
		