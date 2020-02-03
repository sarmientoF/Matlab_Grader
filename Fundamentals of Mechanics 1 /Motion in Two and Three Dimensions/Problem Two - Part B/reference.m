%% symbolic variables and constants
syms t positive
h = 100; %m
th = 53;
v = 30; %m/s
g = 9.81; %m/s^2
 
% Calculate the xMax, yMax
[xMax,yMax] = ParabolicMAX(v, th, g);
 
% X for yMax
x_yMax = xMax / 2;
 
% Time to reach the floor and distance
yf = -100;
y0 = 0;
vy0 = v * sind(th);
vx0 = v * cosd(th);
 
tFloor = solve(yf - y0 == vy0 * t - g * t^2 /2, t);
 
% Range of the rock 
xFloor = vx0 * tFloor;
 
% Position
t2 = 2;
r2 = Position(v,th,t2,g);
 
t4 = 4;
r4 = Position(v,th,t4,g);
 
t6 = 6;
r6 = Position(v,th,t6,g);
 
% Print Results 
 
fprintf('The highest the ball rises is: %0.1f m \n', yMax);
 
fprintf('The horizontal distance the ball moves when y is at its maximum is: %0.1f m \n', x_yMax);
 
fprintf('The time for the ball to the hit the ground is: %0.1f s \n', tFloor);
 
fprintf('The range of the rock is: %0.1f m \n', xFloor);
 
fprintf('The horizontal and vertical position for t = 2 is: %0.1f i %0.1f j m \n', r2);
fprintf('The horizontal and vertical position for t = 4 is: %0.1f i %0.1f j m \n', r4);
fprintf('The horizontal and vertical position for t = 6 is: %0.1f i %0.1f j m \n', r6);
%FUNCTIONS
function r = Position(v,th,t,g)
    %g [m/s^2],
    % th in degree
    y = v*sind(th)*t - g*t^2/2; %vertical distance
    x = v*cosd(th)*t; % horizontal distance
    r = [x, y];
end
function[xMax, yMax] = ParabolicMAX(v,th,g)
    %g [m/s^2]
    % th in degree
    yMax = (v * sind(th))^2 / (2*g); %Highest position
    xMax = v^2 * sind(2*th)/ g; % Maximum horizontal distance
end