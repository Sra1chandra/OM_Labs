/*********************************************
 * OPL 12.6.3.0 Model
 * Author: jss
 * Creation Date: 26-Mar-2018 at 3:58:47 PM
 *********************************************/
int n=...;
range i = 1..n;
int v[i]=...;
dvar int x[i];
minimize abs(sum(j in i) v[j]*(2*x[j]-1));
subject to {
	 forall (j in i)
	   c1:x[j]>=0;
	    
	 forall (j in i)
	   c2:x[j]<=1;
  }	   
 
 
