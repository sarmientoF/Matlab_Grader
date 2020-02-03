%% symbolic variables and constants
syms F(x)
k1 = 204;       %N/m
k2 = -0.233;    %N/m
F(x) = k1*x + k2*x^3; 
x0 = 0;
xf = 16.7;
W2 = int(F(x),x,x0,xf);
fprintf('The work done to strech the cord untill x = 16.7m is: %0.3f J \n\n',W2);