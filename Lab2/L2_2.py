from cvxpy import *

v1= Int(1);
v2= Int(1);
v3= Int(1);
v4= Int(1);
v5= Int(1);

p=Problem(Maximize(v1+v2+v3+v4+v5),[
    v1+v2<=1,    v1+v5<=1,
    v1+v3<=1,    v1+v4<=1,
    v2+v4<=1,    v2+v3<=1,
    v2+v5<=1,    v3+v4<=1,
    v3+v5<=1,    v4+v5<=1,
    v1>=0,v1<=1,v2>=0,v2<=1,v3>=0,v3<=1,v4>=0,v4<=1,
    v5>=0,v5<=1
])

print p.solve()

print v1.value;
print v2.value;
print v3.value;
print v4.value;
print v5.value;
