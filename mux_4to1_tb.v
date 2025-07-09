module mux_4to1_tb;

 
  reg I0, I1, I2, I3;
  reg [1:0] sel;

  wire Y;

  
  mux_4to1 uut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .sel(sel),
    .Y(Y)
  );

  initial begin
    $display("sel | I0 I1 I2 I3 | Y");

    // Test Case 1
    I0 = 0; I1 = 1; I2 = 0; I3 = 1;

    sel = 2'b00; #10;
    $display("%b  |  %b  %b  %b  %b | %b", sel, I0, I1, I2, I3, Y);

    sel = 2'b01; #10;
    $display("%b  |  %b  %b  %b  %b | %b", sel, I0, I1, I2, I3, Y);

    sel = 2'b10; #10;
    $display("%b  |  %b  %b  %b  %b | %b", sel, I0, I1, I2, I3, Y);

    sel = 2'b11; #10;
    $display("%b  |  %b  %b  %b  %b | %b", sel, I0, I1, I2, I3, Y);

    $finish;
  end

endmodule
