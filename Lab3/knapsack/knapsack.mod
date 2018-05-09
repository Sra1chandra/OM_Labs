/*********************************************
 * OPL 12.6.3.0 Model
 * Author: jss
 * Creation Date: 05-Mar-2018 at 4:42:36 PM
 *********************************************/
 
 int n=6;
 int MaxWeight=...;
 range it=1..n;
// int items[it]=...; 
 int value[it]=...;
 int weight[it]=...;
 
 dvar int take[it];
 
 maximize sum(i in it) value[i]*take[i];
 subject to { 
 	forall (i in it) take[i]>=0;
 	forall (i in it) take[i]<=1;
 	y: sum(i in it) weight[i]*take[i] <= MaxWeight;
 	   
 }
 
 