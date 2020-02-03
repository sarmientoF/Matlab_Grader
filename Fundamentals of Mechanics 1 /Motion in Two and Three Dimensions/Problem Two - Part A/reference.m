%% symbolic variables and constants
syms v positive
L = 50; % m
g = 9.81; % m/s^2
th = 45;
xMax = v^2 * sind(2*th)/ g;
v = solve(L == xMax, v); % Calculate the velocity for xMax = 50m 
 
% When throws the ball for th = 90
th = 90;
yMax = (v * sind(th))^2 / (2*g); % Calculate maximum vertical distance for th = 90
 
fprintf('The highest he throws the ball is: %0.1f m \n', yMax);