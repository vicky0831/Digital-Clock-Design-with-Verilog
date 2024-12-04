module DIGITAL_CLOCK(reset,clock,enable,SECOUND,MINUTE,HOUR,complete);


input reset,clock,enable;
output [5:0]SECOUND,MINUTE;
output [3:0]HOUR;
output complete;

wire [5:0]SEC,MIN;
wire done1,done2;

SECOUND_COUNTER (reset,clock,enable,SEC,done1);
MINUTE_COUNTER (reset,clock,done1,SEC,MIN,done2);
HOUR_COUNTER (reset,clock,done2,SEC,MIN,HOUR,complete);
			
				
assign SECOUND=SEC;
assign MINUTE=MIN;

endmodule
