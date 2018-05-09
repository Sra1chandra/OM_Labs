/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 11-Mar-2017 at 2:21:11 AM
 *********************************************/

 int n = ...;
 
 int rowsSum[1..n] = ...;
 int colsSum[1..n] = ...;
 int diagsSum[1..2] = ...;
 
 dvar int+ matrix[1..n][1..n];
 
 tuple elems{
 	int rowIndex;
 	int colIndex;
 	int value; 
 }
 
 {elems} rowElements = ...;
 
 //Objective
 maximize 1;
 
 //Constraints
 subject to{
 	forall(i in 1..n)
 	  c1:
 	  sum(j in 1..n) matrix[i][j] == rowsSum[i];
 	  
 	 forall(j in 1..n)
 	   c2:
 	   sum(i in 1..n) matrix[i][j] == colsSum[j];
 	  
 	 c3: sum(i in 1..n) matrix[i][i] == diagsSum[1];
 	 c4: sum(i in 1..n) matrix[n+1-i][i] == diagsSum[2];
 	 
 	 forall(t in rowElements) 
 	 	c5:
 	 	matrix[t.rowIndex][t.colIndex] == t.value;
 	 	
 	 forall(i in 1..n)
 	   forall(j in 1..n)
 	     c6:
 	     matrix[i][j] >= 1;
 }
 
 execute{
 	for(var i = 1; i <= n; i++){
 		for(var j = 1; j<= n; j++){
 		 		write(matrix[i][j], " ,");
 		} 	writeln();
 	} 
 }
