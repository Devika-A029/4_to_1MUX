module mux_4to1(
	input I0,I1,I2,I3,
  	input [1:0] sel,
	output Y
);
  assign Y=(sel==2'b00)?I0:
    		(sel==2'b01)?I1:
    (sel==2'b10)?I2:
    I3;
endmodule