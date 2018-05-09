param n;
param puzzle{1..n, 1..n} default -1;

var x{1..n, 1..n} binary;

#
# constraints
#
s.t. c1{i in 1..n, j in 1..n: puzzle[i,j] >= 0}:
    puzzle[i,j] = sum{a in {-1,0,1}, b in {-1,0,1}: 
                            i+a > 0  and j+b >  0 and
                            i+a <= n and j+b <= n}
                         x[i+a, j+b]
;