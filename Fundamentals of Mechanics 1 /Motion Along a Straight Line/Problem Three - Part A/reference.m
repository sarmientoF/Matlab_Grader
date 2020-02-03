%% symbolic variables and constants
syms h positive
syms y(t)
assume(t>1) % t is bigger than 1
 
g = 9.81; % m/s^2
 
y(t) = g * t^2 /2;
h = g * t^2 / 2;
 
t = solve(y(t) - y(t-1) ==  h/3,t);
h = subs(h,t);
 
fprintf('The height of the building is: %0.1f m \n', h);