/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 04-Mar-2017 at 3:12:32 PM
 *********************************************/

 int n = ...;
 int m = ...;
 
 range nodes = 1..n;
 range edges = 1..m;
 
 int A[nodes][edges] = ...;
 
 int b[nodes] = ...;
 int c[edges] = ...;
 
 // Objective 
 dvar float+ x[edges];
 
 minimize sum(j in edges) c[j]*x[j];
 
 //Constraints
 subject to {
	 forall (i in nodes) 
	 	y: sum(j in edges) A[i][j]*x[j] == b[i];
 } 