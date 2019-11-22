`timescale 1ns/1ns
module compressor5to1(x1,x2,x3,x4,x5,Cin1,Cin2,Sum,Carry,Cout1,Cout2);
  
  input x1,x2,x3,x4,x5,Cin1,Cin2;
  output Sum,Cout1,Cout2,Carry;
  
  wire w1,w2,w3;
  
  assign Cout1=((x1^x2)& x3)|(x1 & x2);
  assign Cout2=((x4^x5)& x4)|((~(x4^x5))& Cin1);
  assign   Sum=(x1^x2^x3)^(x4^x5^Cin1)^Cin2;
  assign Carry=(((x1^x2^x3)^(x4^x5^Cin1))& Cin2)|(~((x1^x2^x3)^(x4^x5^Cin1))&(x1^x2^x3));
  
endmodule
