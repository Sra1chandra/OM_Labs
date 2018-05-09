/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 04-Mar-2017 at 2:56:47 PM
 *********************************************/

 int n = ...;
 range vertices = 1..n;
 
 int Start = ...;
 int End = ...;
 
 tuple arc {
 	int u;
 	int v;
 	float w; 
 }
 
 {arc} A = ...;
 
 dvar float+ x[A];
 
 
 //Objective
 minimize sum(e in A) e.w*x[e];
 
 //Constraints
 subject to {
 	source:
 	sum (e in A: e.v == End) x[e] - sum (e in A:e.u == End) x[e] == 1;
 	
 	end:
 	sum (e in A: e.v == Start) x[e] - sum (e in A:e.u == Start) x[e] == -1;
 
 	forall(z in vertices: z != Start && z != End)
 	  balance:
 	  sum (e in A: e.v == z) x[e] - sum (e in A: e.u == z) x[e] == 0 ; 
 }