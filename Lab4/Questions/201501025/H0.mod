set N=1..9;
param n:=9;
param m{i in N,j in N} ;

var x {( i ,j , k ) in { N cross N cross N }} binary ;

subject to Column { j in N , k in N }:
				sum { i in N } x [i ,j , k ] = 1 ;

subject to Row { i in N , k in N }:
				sum { j in N } x [i ,j , k ] = 1 ;

subject to distinct { i in N , j in N }:
				sum { k in N } x[i ,j , k ] = 1 ;

subject to block { k in N , p in 1..3 , q in 1..3}:
				sum { i in (3* p -2) ..(3* p ) } 
					sum { j in (3* q -2) ..(3* q ) }
						 x [i ,j , k ] = 1 ;


subject to known {i in N, j in N: m[i,j]>0 }:
				x[i ,j , m[i,j]] = 1;