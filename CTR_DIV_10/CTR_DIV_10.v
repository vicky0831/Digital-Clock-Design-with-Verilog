module CTR_DIV_10 (clock,reset,enable, ctr, complete);
input clock,reset,enable;
output complete;
output [3:0]ctr;
reg[3:0]q;
parameter mod = 4'd9;

always@(posedge clock)
	if(reset) q=0;else
		if(q==mod) q=0; else
			if(enable) q=q+1;else
				q=q;
				
assign ctr=q;
assign complete=(q==mod);

endmodule
