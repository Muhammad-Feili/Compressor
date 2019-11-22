`timescale 1ns/1ns
module tbCompressor();
  
reg x1,x2,x3,x4,Cin;
wire Sum,Carry,Cout;

compressor4to2   inst(x1,x2,x3,x4,Cin,Sum,Carry,Cout);

initial
begin
  {x2,x3,x4,Cin}=4'b0000;
  x1=1'b1;
  #1
  x2=~x2;
  #1
  x3=~x3;
  #1
  x4=~x4;
  #1
  Cin=~Cin;
  #1
  x1=~x1;
  //step 1
  #1
  x2=~x2;
  #1
  x3=~x3;
  #1
  x4=~x4;
  #1
  Cin=~Cin;
  #1
  x1=~x1;
  //step 2
  #1
  x2=~x2;
  #1
  x3=~x3;
  #1
  x4=~x4;
  #1
  Cin=~Cin;
  #1
  x1=~x1;
  //step 3
  #1
  x2=~x2;
  #1
  x3=~x3;
  #1
  x4=~x4;
  #1
  Cin=~Cin;
  #1
  x1=~x1;
  //step 4
  #1
  x2=~x2;
  #1
  x3=~x3;
  #1
  x4=~x4;
  #1
  Cin=~Cin;
  #1
  x1=~x1;
  //step 5
  #1
  x2=~x2;
  #1
  x3=~x3;
  #1
  x4=~x4;
  #1
  Cin=~Cin;
  #1
  x1=~x1;
 end
endmodule
  