/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 04-Mar-2017 at 5:30:53 PM
 *********************************************/
//Variables
dvar float x1;
dvar float x2;

//Objective

//maximize 2*x1 + 3*x2;

dexpr float obj = 2*x1 + 3*x2;

maximize obj;

// Constarints

subject to {
	constraint1: x1 + 2*x2 <= 20;
	x1 + x2 <= 10;
	x1 >= 0;
	x2 >= 0;
}