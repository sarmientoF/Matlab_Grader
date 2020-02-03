%% symbolic variables and constants
rE1 = 6370E3; % m
rA_E1 = 2500E3; % m
rP_E1 = 500E3; % m
vA1 = 730; % m/s 
% Calculations of distances
rA1 = rA_E1 + rE1;
rP1 = rP_E1 + rE1;
% Velocities
vP = rA1/ rP1 * vA1;
fprintf('Speed at perigee is: %0.1f m/s\n',vpa(vP));