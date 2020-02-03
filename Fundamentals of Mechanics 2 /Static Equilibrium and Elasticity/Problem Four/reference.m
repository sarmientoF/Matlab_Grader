%% symbolic variables and constants
syms w positive 
syms NA NB L positive
syms th real
 
wA = w;
wB = 2 * w;
wR = w/2;
th1 = 30; 
th2 = 60; 
% Sum the forces
F = [wA*[0,-1]
     wB*[0,-1]
     wR*[0,-1]
     NA*[cosd(th1), sind(th1)]
     NB*[-cosd(th2), sind(th2)]];
 
TotalF = sum(F);
% Solve for equilibrium position of normal forces on A and B
Eq1 = TotalF(1) == 0;
Eq2 = TotalF(2) == 0;
 
[NA, NB] = solve([Eq1, Eq2], [NA, NB]);
% Solve for torque
M_CMB1 = (wA * L + wR * L/2) * cosd(th) - NB * L * cosd(th1-th);
Eq3a = M_CMB1 == 0;
% Find minumum theta for equilibrium
th = min(abs(solve(Eq3a, th)));
th = vpa(th);
fprintf('Angle rod forms with the horizontal is: %0.2f degrees\n', th);