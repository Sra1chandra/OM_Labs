/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 11-Mar-2017 at 3:03:12 AM
 *********************************************/

 int n = ...;
 
 int rowsSum[1..n] = ...;
 int colsSum[1..n] = ...;
 int diagsSum[1..2] = ...;
 
 int matrix[1..n][1..n] = ...;
 
 dvar int x[1..n][1..n] in 1..n; 
 
 //Objective
 maximize 1;
 
 //Constraints
 subject to{
 	forall(i in 1..n)
 	  c1:
 	  sum(j in 1..n) x[i][j] == rowsSum[i];
 	  
 	 forall(j in 1..n)
 	   c2:
 	   sum(i in 1..n) x[i][j] == colsSum[j];
 	  
 	 c3: sum(i in 1..n) x[i][i] == diagsSum[1];
 	 c4: sum(i in 1..n) x[n+1-i][i] == diagsSum[2];
 	 
 	 forall(i,j in 1..n: matrix[i][j] != 0) 
 	 	c5:
 	 	x[i][j] == matrix[i][j];
 	 
 	 forall(i in 1..n)
 	   forall(j in 1..n)
 	     c6:
 	     x[i][j] >= 1;
 }
 
 execute{
 	for(var i = 1; i <= n; i++){
 		for(var j = 1; j<= n; j++){
 		 		write(x[i][j], " ,");
 		} 	writeln();
 	} 
 }