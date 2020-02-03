%% symbolic variables and constants
syms x(t) 
syms x0 v0 a v
 
x(t) = x0 + v * t + a * t^2 / 2;
 
aSol = solve(x == x0, a)
 
%The  total  displacement  is  zero  when  the  object  has  arrived  back 
%at  its  starting  point.  As  the  acceleration  gets  less,  it  takes  
%more  time  for  the  object  to  return  to  its  starting  point.  As t-> inf, 
%acceleration  goes  to  zero,  which  means  it  would  take  an  infinite 
%amount  of  time  for  the  object  to  arrive  back  at  its starting  point.