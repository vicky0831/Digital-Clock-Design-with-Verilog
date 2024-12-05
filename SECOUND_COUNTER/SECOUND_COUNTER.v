module SECOUND_COUNTER(reset, clock, enable, SEC, done);

parameter BITS=6;
input reset,clock,enable;
output [BITS-1:0]SEC;
output done;
reg[BITS-1:0] RESULT;

always@(posedge clock)
	if(reset) RESULT=0; else 
		if(RESULT==6'd59) RESULT=0; else
			if(enable) RESULT=RESULT+1;else
				RESULT=RESULT;
				
assign SEC=RESULT;
assign done=(RESULT==6'd59);

endmodule
