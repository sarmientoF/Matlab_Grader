%% symbolic variables and constants
syms m F(t) 
syms p q n 
x0 = [0, 0];
v0 = [0, 0]; 
Fx = p * t; 
ax = Fx/ m; 
vx = int(ax,t,0,t) + v0(1) ;
x = int(vx,t,0,t) + x0(1) ;
%[x, vx] = position(ax, v0(1), x0(1)); 
Fy = n + q * x; 
F = [Fx, Fy];
a = F/ m;
v2 = int(a,t,0,t) + v0 ;
r2 = int(v2,t,0,t) + x0 ;
%[r, v] = position(a, v0, x0);
fprintf('The position as a function of time is: \n')
pretty(r2)
fprintf('The velocity as a function of time is: \n')
pretty(v2)