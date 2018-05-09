/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 11-Mar-2017 at 12:07:23 PM
 *********************************************/

 int rows = ...;
 int cols = ...;
 
 int cost[1..rows, 1..cols] = ...;
 dvar boolean x[1..rows, 1..cols];
 
 minimize
 	sum(i in 1..rows, j in 1..cols)x[i,j]*cost[i,j];
 	
 subject to{
 	forall(i in 1..rows)
 	  c1:
 	  sum(j in 1..cols) x[i,j] == 1;
 	  
 	forall(j in 1..cols)
 	  c2:
 	  sum(i in 1..rows) x[i,j] <= 1; 
 }
 
 execute{
 	for(var i = 1; i <= rows; i++){
 		for(var j = 1; j <= cols; j++){
 			if(x[i][j] == 1)writeln("Processor ", i, " - Job ", j);	
 		} 	
 	}
  
 }