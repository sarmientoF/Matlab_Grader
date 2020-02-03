%% symbolic variables and constants 
syms x(t) v(t) a(t)
 
x(t) = 5 * t^2 - 4 * t^3;
v(t) = diff(x, t);
a(t) = diff(v, t);