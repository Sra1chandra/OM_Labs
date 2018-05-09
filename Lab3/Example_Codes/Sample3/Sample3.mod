/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 04-Mar-2017 at 11:57:02 AM
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
 
 main {
 
 	function size(number) {
 		return 2*number; 	
 	} 
 
 	var mod = thisOplModel.modelDefinition;
 	var dat = thisOplModel.dataElements;
 	for(var rand_num = 10; rand_num < 15; rand_num++){
 		var MyCPLEXModel = new IloCplex();
 		var opl = new IloOplModel(mod, MyCPLEXModel);
 		dat.n = size(rand_num);
 		opl.addDataSource(dat);
 		opl.generate();
 		
 		if(MyCPLEXModel.solve()){
 		 		writeln("n = ", dat.n, " Solution: ",MyCPLEXModel.getObjValue());
 		}
 		opl.end();
 		MyCPLEXModel.end();
 	}
  
 }