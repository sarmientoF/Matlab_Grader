%% symbolic variables and constants
syms m th
assume(th>0 & th<90);
 
uS = 0.8; 
L_CM = 9e-2; % m, from bottom to CM
L = 20e-2;% length of pen
g = 9.81;
 
% N2 normal force from vertical wall
% By using moment of inertia at pivot
N2 = m * g * L_CM * cosd(th) / (L*sind(th));
 
% N1 and f forces acting on the bottom
N1 = m * g;
fMax = N1 * uS;
% Equilibrium along axis x
th = solve(N2 == fMax, th);
th = vpa(th);
fprintf('Minimum angle is: %0.2f degrees\n', th);