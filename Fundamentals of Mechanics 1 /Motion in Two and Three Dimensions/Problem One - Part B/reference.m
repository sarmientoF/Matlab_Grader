%% symbolic variables and constants
syms v(t) ax ay
 
v0 = [10, 20];
a = [ax, ay];
v(t) = v0 + a * t;
 
[axSol, aySol] = solve(v(4) == [0 10], a);
v = subs(v,[ax ay],[axSol aySol]);
 
r0 = 0;
r = int(v, t, 0, t) - r0;
 
% Print results
aSol = [axSol, aySol];
fprintf('The acceleration is: %0.1f i %0.1f j m/s^2 \n',[axSol, aySol]);
 
fprintf('The position and velocity vectors as a function of time are:\n');
pretty(r)
pretty(v)