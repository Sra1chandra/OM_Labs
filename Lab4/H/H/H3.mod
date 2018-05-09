param n; # number of different weights
param m; # original weight

var weights{1..n} >= 1 <= m integer; # the weights
var x{1..m, 1..n} >= -1 <= 1 integer; # the combinations

minimize obj: weights[n];

#
# constraints
#
s.t. c1{i in 2..n}: weights[i-1] <= weights[i];

s.t. c2: m = sum{i in 1..n} weights[i];

# Check that all weights from 1 to 40 can be made.
#  
# Since all weights can be on either side
# of the side of the scale we allow either
# -1, 0, or 1 or the weights, assuming that
# -1 is the weights on the left and 1 is on the right.
# 
s.t. c3{j in 1..m}:
      sum{i in 1..n} (x[j,i]*weights[i]) = j ;
