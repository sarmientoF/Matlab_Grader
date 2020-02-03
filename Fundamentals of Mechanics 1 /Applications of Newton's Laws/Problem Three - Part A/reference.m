%% symbolic variables and constants
syms x(t) p q
syms m t 
x(t) = p*t^3 + q*t^2;
v = diff(x,t);
a(t) = diff(v,t); 
F(t) = m*a; 
fprintf('The net force on this object for any time t is : %s \n', char(F));