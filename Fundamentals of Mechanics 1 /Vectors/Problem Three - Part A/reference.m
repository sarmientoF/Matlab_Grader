%% symbolic variables and constants
syms y r
x = 2;
th = pi/6;
rRec = [x y];
rPol = r * [cos(th) sin(th)];
[ySol, rSol] = solve(rRec == rPol, [y r]);
fprintf('The value of y is: %0.4f \n', ySol);
fprintf('The value of r is: %0.4f \n', rSol);