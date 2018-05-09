param n;
set vertices := 1..n;
var v{i in vertices} binary;
param w{i in vertices};
set edges within {vertices cross vertices};

minimize vc : sum{i in vertices} w[i]*v[i];

s.t. everyedge{(i,j) in edges} : v[i] + v[j] >= 1;