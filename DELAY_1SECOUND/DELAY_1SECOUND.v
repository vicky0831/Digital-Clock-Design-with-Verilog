module DELAY_1SECOUND(clock_50MHZ, reset,enable, clock_1HZ);
input clock_50MHZ,reset,enable;
output clock_1HZ;
wire s1,s2,s3,s4,s5,s6,s7;


CTR_DIV_10(clock_50MHZ,reset,enable,ctr,s1);
CTR_DIV_10(s1,reset,enable,ctr,s2);
CTR_DIV_10(s2,reset,enable,ctr,s3);
CTR_DIV_10(s3,reset,enable,ctr,s4);
CTR_DIV_10(s4,reset,enable,ctr,s5); //500Hz
CTR_DIV_10(s5,reset,enable,ctr,s6);
CTR_DIV_10(s6,reset,enable,ctr,s7);
CTR_DIV_5(s7,reset,enable,ctr,clock_1HZ);


endmodule