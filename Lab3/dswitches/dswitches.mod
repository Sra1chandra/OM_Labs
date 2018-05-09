/*********************************************
 * OPL 12.6.3.0 Model
 * Author: jss
 * Creation Date: 26-Mar-2018 at 3:51:16 PM
 *********************************************/

int n=...;
int effect[1..n,1..n,1..n,1..n];
dvar int x[1..n,1..n];
dvar int y[1..n,1..n];

execute {
  for(var i=1;i<=n;i++) {
	  for(var j=1;j<=n;j++) {
  		for(var k=1;k<=n;k++) {
  			for(var l=1;l<=n;l++){ 				
    		if(Opl.abs(i-k)+Opl.abs(j-l)<=1){
    				writeln("", i,j,k,l);
    				effect[i][j][k][l]=1;
    				}
  }}}}}
 
 minimize sum(i in 1..n) sum(j in 1..n) x[i][j];
 subject to {
  		forall(k in 1..n)
  			forall(l in 1..n)
  			  sum(i in 1..n)sum(j in 1..n) x[i][j]*effect[i][j][k][l]==2*y[k][l]+1;
  		forall(k in 1..n)
  			forall(l in 1..n)
  			  	y[k][l]>=0;
  		forall(i in 1..n)
  			forall(j in 1..n)
  			  	x[i][j]>=0;
  			  	  			  
  	 
 }