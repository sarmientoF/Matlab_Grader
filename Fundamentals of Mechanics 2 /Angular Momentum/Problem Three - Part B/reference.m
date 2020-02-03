%% symbolic variables and constants
rA = 40000E3; % m
rP_E = 200E3; % m
rE = 6370E3; % m
vA = 3E3; % m/s 
% rP 
rP = rP_E + rE;
% Velocity at perigee
vP = rA/ rP * vA;
fprintf('Speed at perigee is: %0.4E m/s\n',vpa(vP));