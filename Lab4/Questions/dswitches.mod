param n;
param init{1..n,1..n};
var x{1..n, 1..n} integer;
var y{1..n, 1..n} integer;
minimize OBJ:sum{i in 1..n, j in 1..n} x[i,j];

subject to c1{i in 1..n, j in 1..n}:
	2*y[i,j]=
	sum{a in {-1,0,1}, b in {-1,0,1}: 
							i+a > 0  and j+b >  0 and
                            i+a <= n and j+b <= n}
                         	x[i+a, j+b]

	- sum{a in {-1,1}, b in {-1,1}: 
							i+a > 0  and j+b >  0 and
                            i+a <= n and j+b <= n}
                         	x[i+a, j+b]
    +init[i,j];

 subject to   c2{i in 1..n, j in 1..n}:x[i,j]>=0;
 subject to   c3{i in 1..n, j in 1..n}:y[i,j]>=0;
 