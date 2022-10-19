`timescale 1ns/1ps
module multb();
  reg [1:0]a,b;
  wire [3:0]p;
  my2mul m1(p,a,b);
  
  initial
    $monitor($time,"\t a=%b,\t b=%b,\t p=%b  \n",a,b,p);
  initial
    begin
   a=0;b=0;
          #5  a=0;b=0;
          #5  a=1;b=2;
          #5  a=2;b=2;
      #50 $stop;
    end
endmodule
