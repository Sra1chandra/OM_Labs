/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 25-Mar-2018 at 1:54:59 PM
 *********************************************/
 int n = ...;
 
 dvar boolean x[1..n][1..n];
 dvar int+ d[1..n][1..n];
 
 dexpr int obj = sum(i in 1..n, j in 1..n)x[i][j];
 
 minimize obj;
 
 subject to{
 	
 	c1: forall(i in 2..n-1, j in 2..n-1)
 		x[i][j] + x[i-1][j] + x[i+1][j] + x[i][j-1] + x[i][j+1] == 2*d[i][j] + 1;	
 	
 	c2: x[1][1] + x[2][1] + x[1][2] == 2*d[1][1] + 1;
 	c3: x[1][n] + x[2][n] + x[1][n-1] == 2*d[1][n] + 1;
 	c4: x[n][1] + x[n-1][1] + x[n][2] == 2*d[n][1] + 1;
 	c5: x[n][n] + x[n-1][n] + x[n][n-1] == 2*d[n][n] + 1;
 	
 	c6: forall(j in 2..n-1)
 		x[1][j] + x[2][j] + x[1][j+1] + x[1][j-1] == 2*d[1][j] + 1; 
 	
 	c7: forall(i in 2..n-1)
 		x[i][1] + x[i-1][1] + x[i+1][1] + x[i][2] == 2*d[i][1] + 1;
 		
 	c8: forall(j in 2..n-1)
 		x[n][j] + x[n-1][j] + x[n][j+1] + x[n][j-1] == 2*d[n][j] + 1; 
 	
 	c9: forall(i in 2..n-1)
 		x[i][n] + x[i-1][n] + x[i+1][n] + x[i][n-1] == 2*d[i][n] + 1;
 }