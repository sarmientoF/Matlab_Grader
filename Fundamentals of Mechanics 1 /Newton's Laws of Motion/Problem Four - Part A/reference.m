%% symbolic variables and constants
syms x(t)
syms m t
syms a b c 
 
x(t) = a*t^4 + b*t^3 + c*t;
 
% Acceleration of the body
v = diff(x,t);
a = diff(v,t);
%a = acceleration(x); 
F = m*a;
fprintf('The acceleration of the body is: %s \n',char(a));
fprintf('The time-dependent force acting on the body is: %s \n',char(F));