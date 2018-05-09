/*********************************************
 * OPL 12.6.3.0 Model
 * Author: jss
 * Creation Date: 02-Apr-2018 at 5:10:31 PM
 *********************************************/
int number_of_inputs=3;
int number_of_outputs=2;


float inputcost[1..3]=...;
int Valves[1..3]=...;
float inputcarbon[1..3]=...;


int Blenders[1..2]=...;
float demand[1..2]=...;
float carbonfinal[1..2]=...;
float outputPrice[1..2]=...;


dvar float x[1..3];
dvar float z[1..2];
dvar float y[1..2][1..2];
dvar float c[1..2];

maximize outputPrice[1]*z[1]+outputPrice[2]*z[2]-inputcost[1]*x[1]
-inputcost[2]*x[2]-inputcost[3]*x[3];

subject to {


	c1:x[1]+x[2]==y[1][1]+y[2][1];
	
	c2:sum(i in 1..2) inputcarbon[i]*x[i]==sum(i in 1..2) c[i]*y[1][2];
	
	c3:x[3]==y[2][1]+y[2][2];
	
	forall(i in 1..2)
		c[i]*y[1][i]+inputcarbon[3]*y[2][i]<=carbonfinal[i]*z[i];

	z[1]==sum(i in 1..2) y[i][1];
	z[2]==sum(i in 1..2) y[2][i];
	
	forall(i in 1..2)
	  	z[i]<=demand[i];
}
