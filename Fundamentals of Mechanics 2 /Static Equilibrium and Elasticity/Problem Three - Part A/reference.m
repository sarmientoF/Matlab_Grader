%% symbolic variables and constants
syms F positive
syms th 
assume(th>0 & th<90)
uS = 0.8; % coefficient of static friction
 
F_x = F * cosd(th);
F_y = F * sind(th);
 
N = F_y; % Normal force from the floor to the pencil
fMax = N * uS; % Friction force
 
th = solve(F_x== fMax, th);
th = vpa(th);
fprintf('Minimum angle is: %0.2f degrees\n', th);