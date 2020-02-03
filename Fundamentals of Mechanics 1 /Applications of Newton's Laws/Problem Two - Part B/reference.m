%% symbolic variables and constants
m = 40; % kg
R = 7; % m
vA = 10; % m/s
vB = 10.5; % m/s
g = 9.81; % m/s^2
 
aC_A = vA^2 / R;
NA = m * aC_A - m * g * cosd(0);
fprintf('The force of the car seat on the child at point A is : %0.3f N \n', NA);
 
aC_B = vB^2 / R;
NB = m * aC_B - m * g * cosd(30);
 
fprintf('The force of the car seat on the child at point B is : %0.3f N\n', NB);
 
% To Find the min velocity at A
syms vA positive
 
aC_A = vA^2 / R;
N = m * aC_A - m * g * cosd(0);
vAMin = solve(N == 0, vA);
 
fprintf('The minimum speed is required to keep the child in his seat at point A is : %0.3f m/s \n', vAMin);