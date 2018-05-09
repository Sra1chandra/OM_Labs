set Valves;
set Blenders;
param demand{Valves};
param carbonfinal{Blenders};
param outputPrice{Blenders};
param inputcost{Valves};
param inputcarbon{Valves};

var x{Valves};
var z{Blenders};
var y{Blenders,Blenders};
var c{Blenders};

maximize revenue: sum{ i in Blenders} outputPrice[i]*z[i]-sum{ i in Valves} inputcost[i]*x[i];

subject to C1: x[1]+x[2]==y[1,1]+y[2,1];
subject to C2:sum{ i in Blenders} inputcarbon[i]*x[i]==sum{i in Blenders} c[i]*y[1,i];
subject to C3:c[1]*y[1,1]+inputcarbon[3]*y[2,1]<=carbonfinal[1]*z[1];
subject to C4:c[2]*y[1,2]+inputcarbon[3]*y[2,2]<=carbonfinal[2]*z[2];
subject to C5:x[3]=y[2,1]+y[2,2];
subject to C6:z[1]==sum{i in Blenders} y[i,1];
subject to C7:z[2]==sum{i in Blenders} y[2,i];
subject to C8:z[1]<=demand[1];
subject to C9:z[2]<=demand[2];
subject to A{i in Valves}: x[i]>=0;
subject to B{i in Blenders}: z[i]>=0;
subject to D{i in Blenders}: c[i]>=0;
subject to E{i in Blenders, j in Blenders}: y[i,i]>=0;
