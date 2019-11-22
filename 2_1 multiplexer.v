`timescale 1ns/1ns
module mux2to1(out,in1,in2,sel);
  input in1,in2,sel;
  output out;
  assign out=sel?in2:in1;
endmodule
