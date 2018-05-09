/*********************************************
 * OPL 12.6.3.0 Model
 * Author: jss
 * Creation Date: 26-Mar-2018 at 10:57:45 PM
 *********************************************/

int n=...;
dvar int x[1..n,1..n];
dvar int y[1..n,1..n];
 
 minimize sum(i in 1..n) sum(j in 1..n) x[i][j];
 subject to {
  		forall(k in 1..n)
  			forall(l in 1..n)
  			  sum(i in 1..n)sum(j in 1..n) x[i][j]*effect[i][j][k][l]==2*y[k][l]+1;
  		forall(k in 1..n)
  			forall(l in 1..n)
  			  	y[k][l]>=0;
  		forall(i in 1..n)
  			forall(j in 1..n)
  			  	x[i][j]>=0;
  			  	  			  
  	 
 }