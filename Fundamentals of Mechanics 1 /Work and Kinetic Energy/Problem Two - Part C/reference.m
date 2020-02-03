%% symbolic variables and constants
syms F(x) a 
F(x) = a * ((x+9)/9 - (9/(x+9))^2); 
x0 = 0;
xf = 16.7;
W = int(F(x),x,x0,xf);
a = solve(W == 22E3,a);
fprintf('The constant a is: %0.3f N\n\n',a);