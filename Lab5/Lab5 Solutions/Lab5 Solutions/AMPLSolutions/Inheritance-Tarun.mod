param n;
param v {1..n};
var x {1..n} binary;
var y {1..n} binary;

minimize cost :  abs(sum{i in 1..n} v[i]*x[i] - sum {j in 1..n} v[j]*y[j]);

s.t. c1 {i in 1..n} : x[i] + y[i] = 1;