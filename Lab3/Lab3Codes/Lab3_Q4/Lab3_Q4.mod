/*********************************************
 * OPL 12.6.3.0 Model
 * Author: krishnam
 * Creation Date: 11-Mar-2017 at 11:03:22 AM
 *********************************************/

 int n = 4;
 int coins = 10;
 
 range S = 1..n;
 
 dvar boolean x[S][S];
 dvar int r[S];
 dvar int c[S];
 
 minimize x[1,1];
 subject to{
 	forall(i in S)
 	  c1:
 	  sum(j in S) x[i][j] == 2*r[i];
 	  
 	 forall(j in S)
 	   c2:
 	   sum(i in S) x[i][j] == 2*c[j];
 	   
 	 total:
 	 coins == sum(i,j in S) x[i][j];
 }
 
 execute{
 	for(var i=1; i<=n; i++){
 		for(var j=1; j<=n; j++){
 			write(x[i][j], ", ");		
 		} 	writeln();
 	} 
 }