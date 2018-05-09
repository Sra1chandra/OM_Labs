/*********************************************
 * OPL 12.6.3.0 Model
 * Author: jss
 * Creation Date: 05-Mar-2018 at 5:23:02 PM
 *********************************************/

 int n=...;
 range it=1..n;
 int matrixi[it][it]=...;
 int rowsSum[it]=...;
 int colsSum[it]=...;
 int diagsSum[1..2]=...;
 
 dvar int+ matrix[it][it];
// minimize sum(i in it) sum(j in it) matrix[i][j];
 
 //Constraints
 subject to {
	 forall (i in it) 
	 	sum(j in it) matrix[i][j] == rowsSum[i];
	 forall (i in it) 
	 	sum(j in it) matrix[j][i] == colsSum[i];
	 forall(i in it)
	   forall(j in it)
	     matrix[i][j]>=1;
	 
	 sum(i in it)matrix[i][i]==diagsSum[1];
	 sum(i in it)matrix[i][n-i+1]==diagsSum[2];
	 matrix[1][1]==1;
	 matrix[2][4]==8;
	 matrix[3][2]==14;
	 matrix[4][3]==15;
	 	 
 } 
 
 