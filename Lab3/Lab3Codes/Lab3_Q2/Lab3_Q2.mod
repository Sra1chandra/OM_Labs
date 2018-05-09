/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 11-Mar-2017 at 11:33:01 AM
 *********************************************/

 setof(string) rowPlayerStrategies = ...;
 setof(string) colPlayerStrategies = ...;
 
 float A[rowPlayerStrategies, colPlayerStrategies] = ...;
 dvar float x[colPlayerStrategies] in 0..1;
 dvar float w;
 
 maximize w;
 
 subject to{
 	forall(i in rowPlayerStrategies)
 	  c1:
 	  sum(j in colPlayerStrategies) (A[i][j]*x[j]) + w <= 0;
 	  
 	sum(j in colPlayerStrategies) x[j] == 1;
 }
 
 execute{
 	writeln("Row player strategy:") 
 	for(var i in rowPlayerStrategies)
 	  writeln(i, ": ",c1[i].dual);
 	  
 	writeln("Column player strategy:") 
 	for(var i in colPlayerStrategies)
 	  writeln(i, ": ",x[i]);
 }
 