%% symbolic variables and constants
syms DH
DP = 3E5; % N/m^2
rho = 1000; % kg/m^3
g = 9.81; % m /s^2
 
% From Pascal's equation 
DH = solve(DP == (rho * g * DH), DH);
DH = vpa(DH);
fprintf('Height above the user that the water level must be at: %0.2f m\n',DH);