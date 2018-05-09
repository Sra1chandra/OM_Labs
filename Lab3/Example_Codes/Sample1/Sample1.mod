/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 04-Mar-2017 at 10:30:31 AM
 *********************************************/

 // Variables
 dvar float x1;
 dvar float x2;
 
 // Objective
 maximize 2*x1 + 3*x2;
 
 //constaints
 subject to{
 	
 	constaint1:
 	x1 + 2*x2 <= 20;
 	
 	constaint2: x1 + x2 <= 10;
 	 
 	x1 <= 5;
 	x1 >= 0;
 	x2 >= 0;
 }
 
 