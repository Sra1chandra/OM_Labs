set countries := {"Belgium", "Denmark", "France", "Germany", "Netherlands", "Luxembourg", "Sweden", "Norway", "Finland", "Spain", "Portugal", "Poland", "Switzerland", "Austria", "Italy" };
param n := 4;
set colors := {"blue", "red", "yellow", "gray"};
set graph within {countries cross countries};
var numColors integer >= 0 <= n;

# x: which color
var x{countries} integer >= 1 <= n;

# indicator
var y{graph, 1..2} binary;

# minimize the number of colors
minimize z:
        numColors;
        # sum{i in countries} x[i];

s.t. c1{ (i,j) in graph}:
        x[i] - x[j] - 1 + 2*n*y[i,j,1] >= 0;

s.t. c2{ (i,j) in graph}:
       -x[i] + x[j] - 1 + 2*n*y[i,j,2] >= 0;

s.t. c3{ (i,j) in graph}:
        y[i,j,1] + y[i,j,2] = 1;

s.t. c4{i in countries}: 
        x[i] <= numColors;