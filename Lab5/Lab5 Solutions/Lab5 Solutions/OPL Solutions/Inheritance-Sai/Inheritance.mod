/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 25-Mar-2018 at 1:25:50 PM
 *********************************************/
 
 int n = ...;
 int v[1..n] = ...;
 dvar boolean x [1..n];
 dvar boolean y [1..n];

 dexpr float obj = abs(sum(i in 1..n) v[i]*x[i] - sum (j in 1..n) v[j]*y[j]);
 
 minimize obj;

 subject to {
	c1: forall(i in 1..n) 
		x[i] + y[i] == 1;
 }