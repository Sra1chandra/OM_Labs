/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 11-Mar-2017 at 1:57:02 AM
 *********************************************/

//0-1 knapsack

 {string} items = ...;

 int MaxWeight = ...;

 float value[items] = ...;
 float weight[items] = ...;

 dvar boolean take[items];

 // Objective
 dexpr float obj = sum(i in items) value[i]*take[i];

 maximize obj;

 //Constraints
 subject to{
 	sum(i in items) weight[i]*take[i] <= MaxWeight;
 }

 execute{
 	writeln("Objective: ",obj);
 	write("Picked Items: ");
 	for(var i in items){
 		if(take[i] == 1)	write(i, ", ");
 	}
 }
