/*********************************************
 * OPL 12.6.3.0 Model
 * Author: jss
 * Creation Date: 05-Mar-2018 at 3:46:38 PM
 *********************************************/

 dvar float x1;
 dvar float x2;
 
 maximize 2*x1+3*x2;
 
 subject to {
 	x1+x2 <=10;
 	x1<=2; 
 }