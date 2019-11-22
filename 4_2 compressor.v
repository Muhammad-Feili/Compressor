`timescale 1ns/1ns
module compressor4to2(x1,x2,x3,x4,Cin,Sum,Carry,Cout);
  
input x1,x2,x3,x4,Cin;
output Sum,Carry,Cout;

wire w1,w2;

xor(w1,x1,x2);//2 input xor
xor(w2,x3,x4,w1);//3 input xor

xor(Sum,w2,Cin);
mux2to1  func1(Cout,x1,x3,w1);
mux2to1  func2(Carry,x4,Cin,w2);

endmodule
