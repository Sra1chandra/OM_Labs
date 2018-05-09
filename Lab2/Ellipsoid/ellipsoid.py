import numpy as np

def separation_oracle(A,b,x):
    m=A.shape[0];n=A.shape[1];
    j=0;isSolfound=False
    hk=np.zeros((n,1));
    while(j<m):
        hk=np.transpose(A[j]);
        # print ('hello',np.round(np.transpose(hk)*x,15))
        if(np.round(np.transpose(hk)*x,15)<np.round(b[j],15)):
            break;
        j=j+1;
    # print j,m
    if(j==m):
        isSolfound=True;
    # print isSolfound
    return (isSolfound,hk)

def ellipsoid(A,b):
    m=A.shape[0];#number of equations
    n=A.shape[1];#number of variables
    A=np.mat(A);
    # b=np.array(1,n);
    U=max(np.amax(A),np.amax(-A),np.amax(b),np.amax(-b));
    print U,n*pow(n*U,2*n)
    v0=np.zeros((n,1));
    D0=n*pow(n*U,2*n)*np.mat(np.identity(n));
    # V=pow(2*n,n)*pow(n*U,n*n)
    # v=pow(n,-n)*pow(n*U,-(n*n)*(n+1))
    # t=np.ceil(2*(n+1)*np.log(V/v));
    # print V,v,t
    t=10000
    x=np.mat(v0);D=D0;
    i=0;
    while(i<t):
        isSolfound,hk=separation_oracle(A,b,x);
        if(isSolfound):
            break;
        # print hk,D
        x=x+(1.0/(n+1))*((D*hk*1.0)/np.sqrt(np.transpose(hk)*D*hk))
        D=(n*n*1.0/(n*n-1))*((D-(2.0/(n+1))*(((D*hk*np.transpose(hk)*D*1.0))/(np.transpose(hk)*D*hk))))
        print (i,x)
        i=i+1;
    if(i==t):print('No solution found')
    else: print x



# while(True):
#     c0=-2;
#     A=np.array([[-1,-1,0,0,0,0,0,0],
#                 [0,-1,-1,0,0,0,0,0],
#                 [-1,0,-1,0,0,0,0,0],
#                 [0,0,-1,-1,0,0,0,0],
#                 [0,-1,0,-1,0,0,0,0],
#                 [0,0,-1,0,0,-1,0,0],
#                 [0,0,0,-1,0,-1,0,0],
#                 [0,-1,0,0,0,0,0,-1],
#                 [0,0,0,0,0,-1,0,-1],
#                 [0,-1,0,0,0,-1,0,0],
#                 [0,-1,0,0,-1,0,0,0],
#                 [0,0,0,-1,-1,0,0,0],
#                 [0,0,0,0,-1,-1,0,0],
#                 [0,0,0,0,0,-1,-1,0],
#                 [0,0,0,0,-1,0,-1,0],
#                 [0,0,0,0,0,0,-1,-1],
#                 [1,0,0,0,0,0,0,0],
#                 [0,1,0,0,0,0,0,0],
#                 [0,0,1,0,0,0,0,0],
#                 [0,0,0,1,0,0,0,0],
#                 [0,0,0,0,1,0,0,0],
#                 [0,0,0,0,0,1,0,0],
#                 [0,0,0,0,0,0,1,0],
#                 [0,0,0,0,0,0,0,1],
#                 [-0.2,-0.2,-0.2,-0.2,-0.2,-0.2,-0.2,-0.2]])
#
#     b=np.array([-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,1,1,1,1,1,1,1,1,c0]);
#     # c=np.array([-1,-1,-1,-1,-1,-1,-1,-1])
#     ellipsoid(A,b)

A=np.array([[1,0],[0,1]]);
b=np.array([1,1]);
c=np.array([1,1]);

m=A.shape[0];
n=A.shape[1];

temp1=np.concatenate((-A,np.zeros((m,m))),axis=1);
temp2=np.concatenate((np.zeros((n,n)),np.transpose(A)),axis=1);
temp3=np.concatenate((temp1,temp2),axis=0);
temp4=np.concatenate((c,-b),axis=0).reshape((m+n,1));
temp5=np.concatenate((temp3,np.transpose(temp4)),axis=0);
temp6=np.concatenate((temp5,np.identity(m+n)),axis=0);

temp1=np.concatenate((-b,c))
temp=np.concatenate((temp1,np.zeros((m+n+1,))),axis=0)


ellipsoid(A,b)
# ellipsoid(np.array([[1,0],[-1,0],[0,1],[0,-1]]),np.array([0.5,-0.5,0.5,-0.5]))
