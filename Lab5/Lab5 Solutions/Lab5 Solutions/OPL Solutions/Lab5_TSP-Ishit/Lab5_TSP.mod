/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 25-Mar-2018 at 3:17:27 PM
 *********************************************/
 
 int n = ...;
 
 int dist[1..n][1..n] = ...;
 
 dvar boolean x[1..n][1..n];
 dvar int+ u[1..n];
  
 dexpr float obj = sum(i in 1..n, j in 1..n: i != j)dist[i][j]*x[i][j];
 
 minimize obj;
 
 subject to{
 
 	forall(i in 1..n)
 	  c1: sum(j in 1..n: i != j) x[i][j] == 1;
 	  
 	forall(j in 1..n)
 	  c2: sum(i in 1..n: i != j) x[i][j] == 1;
 	  
 	c3: forall(i in 1..n, j in 1..n: i != j)
 	  u[i] - u[j] + n*x[i][j] <= n - 1;
  
 }