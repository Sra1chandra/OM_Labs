/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 04-Mar-2017 at 11:23:59 AM
 *********************************************/

//Data
int n = ...;

 // Variables
 dvar float x1;
 dvar float x2;
 
 // Objective
 maximize 2*x1 + n*x2;
 
 //constaints
 subject to{
 	
 	constaint1:
 	x1 + 2*x2 <= n;
 	
 	constaint2: x1 + x2 <= 10;
 	 
 	x1 <= 5;
 	x1 >= 0;
 	x2 >= 0;
 }
 
 // Postprocessing
 execute {
 	if(cplex.getCplexStatus() == 1){
 		writeln("Optimal Solution - x1: ", x1);
 		writeln("Optimal Solution - x2: ", x2); 	
 	} else {
 		writeln(" ERROR: Problem could not be solved"); 	
 	}
 }