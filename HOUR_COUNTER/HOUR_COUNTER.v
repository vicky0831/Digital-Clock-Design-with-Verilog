module HOUR_COUNTER(reset,clock,enable,SEC,MIN,HOUR,done);

parameter BITS=6;
input reset,clock,enable;
input [BITS-1:0]SEC,MIN;
output [3:0]HOUR;
output done;
reg [3:0] RESULT;

always@(posedge clock)
	if(reset) RESULT=0; else
		if((RESULT==4'd12)&(SEC==6'd59)&(MIN==6'd59)) RESULT=0; else
			if(enable) RESULT=RESULT+1; else
				RESULT=RESULT;
				
assign HOUR=RESULT;
assign done = (RESULT==4'd12) & (SEC==6'd59) & (MIN==6'd59);

endmodule
