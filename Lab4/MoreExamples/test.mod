var v{i in 1..6} binary;
param w{i in 1..6};

minimize vc : sum{i in 1..6} w[i]*v[i];

s.t. c1 : v[1] + v[2] >= 1;
s.t. c2 : v[1] + v[4] >= 1;
s.t. c3 : v[1] + v[5] >= 1;
s.t. c4 : v[3] + v[2] >= 1;
s.t. c5 : v[3] + v[5] >= 1;
s.t. c6 : v[3] + v[6] >= 1;