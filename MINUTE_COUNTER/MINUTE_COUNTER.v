module MINUTE_COUNTER(reset,clock,enable, SEC,MIN,done);

parameter BITS=6;
input reset,clock,enable;
input [BITS-1:0]SEC;
output [BITS-1:0]MIN;
output done;
reg [BITS-1:0] RESULT;

always@(posedge clock)
	if(reset) RESULT=0; else
		if((RESULT==6'd59)&(SEC==6'd59)) RESULT=0; else
			if(enable) RESULT=RESULT+1; else
				RESULT=RESULT;
				
assign MIN=RESULT;
assign done = (RESULT==6'd59) & (SEC==6'd59);

endmodule

