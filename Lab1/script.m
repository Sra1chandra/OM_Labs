A=[-2 1 4;1 2 3;-1 0 0;0 -1 0;0 0 -1];
b=[0;480;0;0;0];
f=[-100;-200;-400];
[x,fval]=linprog(f,A,b);
ans=-fval;