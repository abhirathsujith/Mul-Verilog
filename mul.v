`timescale 1ns / 1ps
module hadder(s,c,a,b);
input a,b;
output s,c;
  xor x1(s,a,b);
  and a1(c,a,b);
endmodule

module mul(p,a,b);
  input [1:0]a,b;
  output [3:0]p;
  wire w1;
  assign p[0]=a[0]&b[0];
  hadder h1(p[1],w1,(a[1]&b[0]),(b[1]&a[0]));
  hadder h2(p[2],p[3],w1,(a[1]&b[1]));

endmodule
