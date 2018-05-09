reset;
param n;
var x {1..n, 1..n} binary;

maximize total_num: # maximize the number of queens on board
sum { (i,j) in {1..n, 1..n} } x[i,j];

s.t. row {i in 1..n}: # only one queen in each row
sum {j in {1..n} } x[i,j] <= 1;

s.t. col {j in 1..n}: # only one queen in each col
sum {i in {1..n} } x[i,j] <= 1;

s.t. main_diag { k in {(2-n)..(n-2)} }: # only one queen in each main diagonal
sum { (i,j) in {1..n, 1..n}: i-j=k } x[i,j] <= 1;

s.t. off_diag { k in {2..(2*n)} }: # only one queen in each off diagonal
sum { (i,j) in {1..n, 1..n}: i+j=k } x[i,j] <= 1;
