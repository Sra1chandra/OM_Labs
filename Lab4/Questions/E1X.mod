param n = 5;
var p{i in 1..n} integer;
var m integer;
var sumvar = sum{i in 1..n} p[i]; 
subject to minimum{i in 1..n}: m <= p[i];
subject to minlimit: 21 <= m <= 29;
subject to c1: p[1] = p[2]/2 - 2;
subject to c2: p[2] + p[3] = 14 + p[4] + p[5];
subject to c3: p[2] + p[4] = 0.5*sumvar - 2;
subject to c4: p[3] + p[5] = sumvar*13/32;