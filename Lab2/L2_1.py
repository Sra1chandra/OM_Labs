from cvxpy import *

v1= Int(1);
v2= Int(1);
v3= Int(1);
v4= Int(1);
v5= Int(1);
v6= Int(1);
v7= Int(1);
v8= Int(1);

p=Problem(Minimize(v1+v2+v3+v4+v5+v6+v7+v8),[
    v1+v2>=1,    v2+v3>=1,
    v1+v3>=1,    v3+v4>=1,
    v2+v4>=1,    v3+v6>=1,
    v4+v6>=1,    v2+v8>=1,
    v6+v8>=1,    v2+v6>=1,
    v2+v5>=1,    v4+v5>=1,
    v5+v6>=1,    v6+v7>=1,
    v5+v7>=1,    v7+v8>=1,
    v1>=0,v1<=1,v2>=0,v2<=1,v3>=0,v3<=1,v4>=0,v4<=1,
    v5>=0,v5<=1,v6>=0,v6<=1,v7>=0,v7<=1,v8>=0,v8<=1,
])

print p.solve()

print v1.value;
print v2.value;
print v3.value;
print v4.value;
print v5.value;
print v6.value;
print v7.value;
print v8.value;
