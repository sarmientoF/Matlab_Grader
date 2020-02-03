%% symbolic variables and constants
M_earth = 5.97E24; % kg
M_moon = 7.34E22; % kg
population = 7E9;
M_human = 65; % kg
R = 3.84E5; % m
 
%Calculations 
M_Humans = population * M_human;
Total_M = M_earth + M_moon + M_Humans;
 
D_CM = M_Humans *R / Total_M;
fprintf('The center of mass of the Earth-moon-population system moves: %0.3E m\n', D_CM)