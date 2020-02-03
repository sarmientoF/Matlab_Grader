%% symbolic variables and constants
AU = 1.496E11; % m
 
rP = 0.586 * AU;
rA = 17.8 * AU;
 
vP = 55E3; % m/s
%% part 1
% By conservation of momentum
LP = rP * vP;
LA = LP;
vA1 = LA/ rA;
vA1 = vpa(vA1);
fprintf('Halley`s comet speed at aphelion is: %0.2f m/s\n', vA1);
%% part 2
syms rA positive % in AU
 
AU = 1.496E11; % m
Year = 365 * 24 * 60 * 60; % s
rP = 2.61; % in AU
T = 7.36 * Year;
G = 6.67408E-11;
M_sun = 1.989E30; % kg
 
% From Kepler's law : T^2 = 4 * pi^2 * a^3 / (M * G) 
rA = solve(T^2 == 4 * pi^2 / G/M_sun *((rP*AU + rA* AU)/2)^3, rA);
rA = vpa(rA);
fprintf('The aphelion for comet Lagerkvist is: %0.2f AU\n', rA);
%% part 3
% By conservation of linear momentum : vA*rA = vP * rP
vPvA = rA/ rP;
vPvA = vpa(vPvA);
fprintf('Ratio of the speed at perihelion to that at aphelion for comet Lagerkvist is: %0.2f \n', vPvA);
%% part 4
rX = 2 ; % in AU
vX = 15.5E3; % m/s
rA = 0.4;
% By conservation of linear momentum : vA*rA = vP * rP
vA4 = (vX * rX) / rA;
vA4 = vpa(vA4);
fprintf('Speed at closest approach is: %0.2f m/s\n', vA4);
 
%% part 5
AU = 1.496E11; % m
rP = 0.057 * AU;
rA = 4.99 * AU;
M_sun = 1.989E30; % kg
G = 6.67408E-11;
 
vA5 = sqrt(2 * G * M_sun/(rP+rA) * rP /rA);
vA5 = vpa(vA5);
fprintf('Speed at aphelion for comet P/1999 R1 is: %0.2f m/s\n', vA5);