from cvxpy import *
x1 = Variable()
x2 = Variable()
x3 = Variable()
x4 = Variable()
x5 = Variable()
x6 = Variable()
x7 = Variable()
x8 = Variable()
x9 = Variable()
obj = Maximize(x8 + x9)
constraints = [x1-x4-x5>=0,x1-x4-x5<=0,x2-x6<=0,x2-x6>=0,x3-x7<=0,x3-x7>=0,x4-x8>=0,x4-x8<=0,x5+x6+x7-x9<=0,x5+x6+x7-x9>=0,x1>=-1,x1<=1,x2<=7,x2>=-7,x3<=2,x3>=-2,x4>=-11,x4<=11,x5<=10,x5>=-10,x6<=7,x6>=-7,x7<=2,x7>=-2,x8<=11,x8>=-11,x9<=1,x9>=-1]
prob = Problem(obj, constraints)
prob.solve()
print("{0} solution found!".format(prob.status))
print("Objective value: {0}".format(prob.value))
print("x1: {0} \nx2: {1} \nx3: {2} \nx4: {3} \nx5: {4} \nx6: {5} \nx7: {6} \nx8: {7} \nx9: {8} \n".format(x1.value, x2.value, x3.value, x4.value, x5.value, x6.value, x7.value, x8.value, x9.value))