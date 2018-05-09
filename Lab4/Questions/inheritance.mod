param n;
param v{1..n};

var x{1..n} integer;

minimize value: abs(sum{i in 1..n} v[i]*(2*x[i]-1));
subject to valuex{i in 1..n}:0<=x[i]<=1;