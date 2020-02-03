%% symbolic variables and constants
syms m F(t)
syms p q n t
x0 = [0, 0];
v0 = [0, 0]; 
Fx = p + n * t;
Fy = q * t; 
F = [Fx, Fy];
a = F/ m; 
v = int(a,t,0,t) + v0 ;
r = int(v,t,0,t) + x0 ;
%[r, v] = position(a, v0, x0);
fprintf('The position as a function of time is: \n')
pretty(r)
fprintf('The velocity as a function of time is: \n')
pretty(v)