%% symbolic variables and constants
syms r(t) t
H = 1520; % m
Dt = 10; % s 
b = 0.750;
m = 82.0; % kg
g = 9.81; % m/s^2
% Speed when parachute is opened
v1 = g * Dt;
fprintf('The speed when the parachute opens is: %0.3f m/s \n', v1);
% Distance 
r1 = g * Dt^2 /2;
fprintf('The distance fallen before the parachute opens is: %0.3f m \n', r1); 
% Terminal velocity
v = diff(r,t);
a = diff(v,t);
FD = -b * v; 
ode = m * a == m * g + FD;
cond1 = r(0) == r1;
cond2 = v(0) == v1;
conds = [cond1 cond2];
rSol(t) = dsolve(ode,conds);
rSol = simplify(rSol);
%vLim = diff(rSol,t)
vLim = m * g / b; % When a = 0
fprintf('The terminal velocity is: %0.3f m/s \n', vLim); 
tSol = solve(rSol(t) == 1520, t);
tSol = simplify(tSol);
fprintf('The time the skydiver is in the air after the parachute opens is: %0.3f m/s \n', tSol);