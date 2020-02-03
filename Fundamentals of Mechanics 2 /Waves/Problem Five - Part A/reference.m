%% symbolic variables and constants
syms x t phi real
syms  A k w positive
syms a b real
 
y1(x,t) = A * sin(a - b);
y2(x,t) = A * sin(a + b);
 
y = y1 + y2;
y = simplify(y);
y = subs(y,[a,b],[k*x + phi/2,w*t + phi/2]);
fprintf('The wave function is: %s \n',y);