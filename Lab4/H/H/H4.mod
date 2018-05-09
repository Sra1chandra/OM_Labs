param m integer >= 0;
param n integer >= 0;

param c{1..m,1..n};
var x{1..m} binary;

minimize z: sum{i in 1..m} x[i];

# each pair of floors connected by at least one elevator */
subject to c1{j in 1..n,k in 1..n}:
        sum{i in 1..m} c[i,j]*c[i,k]*x[i] >= 1;