/*********************************************
 * OPL 12.6.3.0 Model
 * Author: jss
 * Creation Date: 02-Apr-2018 at 4:49:59 PM
 *********************************************/

//PRIMAL PART

//
// dvar float x1;
// dvar float x2;
// dvar float x3;
// 
// minimize x1-3*x2-2*x3;
// subject to{
// 	c1:3*x1-x2+2*x3<=7;
// 	c2:2*x1-4*x2+x3>=12;
// 	c3:-4*x1+3*x2+8*x3==10;
// 	c4:x3>=0; 
// }
 
 //DUAL PART
 
 dvar float y1;
 dvar float y2;
 dvar float y3;
 
 maximize -7*y1+12*y2-10*y3;
 subject to{
 	c1:3*y1-2*y2-4*y3==-1;
 	c2:-y1+4*y2+3*y3==3;
 	c3:2*y1-y2+8*y3>=2;
 	c4:y1>=0;
 	c5:y2>=0; 
 }
 
 
 