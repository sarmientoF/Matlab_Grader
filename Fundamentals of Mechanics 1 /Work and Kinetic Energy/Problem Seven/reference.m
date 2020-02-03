%% symbolic variables and constants
% first path
syms x y positive
x = sqrt(4 - (y - 2)^2);
F = [5*y, 10*x];
% Since F is tangent to the path
% int(dot(F,dr)) = int(F*dr)... F // dr
r = [x, y];
DxDy = diff(x,y);
dr = [DxDy, 1];
% Solve
W1 = int(simplify(dot(F, dr)),y,0,2);
fprintf('The work done by the force F in cartesian coordinates is: %0.3f J \n\n',vpa(W1));
%% Polar 
syms r th real
syms x y
P0 = [0, 0];
Pf = [2, 2];
F = [5*y, 10*x];
x = r*cos(th);
y = r*sin(th);
Eq1 = x^2 + (y-2)^2  == 2^2;
r = simplify(solve(Eq1, r));
r = r(r~=0);
if norm(P0) == 0
    th0 = solve(r == norm(P0), th);
else
    th0 = atan2(P0(2), P0(1));
end
if norm(Pf) == 0
    thf = solve(r == norm(Pf), th);
else
    thf = atan2(Pf(2), Pf(1));
end
x = r*cos(th);
y = r*sin(th);
r = [x, y];
dr = diff(r, th);
F = [5*y, 10*x];
W2 = int(simplify(dot(F, dr)),th, th0, thf);
fprintf('The work done by the force F in polar coordinates is: %0.3f J \n\n',vpa(W2));
%% second path
syms x y positive
y = sqrt(4 - (x - 2)^2);
F = [5*y, 10*x];
% Since F is tangent to the path
% int(dot(F,dr)) = int(F*dr)... F // dr
r = [x, y];
DyDx = diff(y,x);
dr = [1, DyDx];
% Solve
W3 = int(simplify(dot(F, dr)),x,0,2);
fprintf('The work done by the force F in cartesian coordinates is: %0.3f J \n\n',vpa(W3));
%% Polar 
syms r th real
syms x y
P0 = [0, 0];
Pf = [2, 2];
F = [5*y, 10*x];
x = r*cos(th);
y = r*sin(th);
Eq1 = (x-2)^2 + y^2  == 2^2;
r = simplify(solve(Eq1, r));
r = r(r~=0);
if norm(P0) == 0
    th0 = solve(r == norm(P0), th);
else
    th0 = atan2(P0(2), P0(1));
end
if norm(Pf) == 0
    thf = solve(r == norm(Pf), th);
else
    thf = atan2(Pf(2), Pf(1));
end
x = r*cos(th);
y = r*sin(th);
r = [x, y];
dr = diff(r, th);
F = [5*y, 10*x];
W4 = int(simplify(dot(F, dr)),th, th0, thf);
fprintf('The work done by the force F in polar coordinates is: %0.3f J \n\n',vpa(W4));