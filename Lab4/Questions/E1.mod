var V integer;
var S integer;
var M integer;
var K integer;
var B integer;
var x integer;

subject to c1:x<=V;
subject to c2:x<=S;
subject to c3:x<=M;
subject to c4:x<=K;
subject to c5:x<=B;
subject to c6:21<=x;
subject to c7:x<=29;
subject to c8:V=(S/2)-2;
subject to c9:M+S=14+K+B;
subject to c10:(K+S)=-2+(V+S+M+K+B)/2;
subject to c11:(B+M)=13*(V+S+M+K+B)/32;
