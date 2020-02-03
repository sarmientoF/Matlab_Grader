%% symbolic variables and constants
M = 2; % kg
th = 40; % degrees
s0 = 50; % m/s % s is for speed
 
mA = 1; % kg
mB = 0.7; % kg
mC = 0.3; % kg
 
syms sB0 sC0
 
vA0 = 10* [0, -1];
vB0 = sB0 * [1, 0];
vC0 = sC0 * [0, 1];
 
% By using momentum conservation on the x_axis
P0_x = M * [s0 *cosd(th), 0];
Pf_x = mA * vA0 + mB * vB0 + mC * vC0;
 
[sB0, sC0] = solve(P0_x == Pf_x, [sB0, sC0]);
sC0 = vpa(sC0);
sB0 = vpa(sB0);
fprintf("The speed of 0.3kg particle after the break-up is: %0.3f m/s\n", sC0)
fprintf("The speed of 0.7kg particle after the break-up is: %0.3f m/s\n", sB0)
 
% Highest 0.3kg reaches
g = 9.81;
thC = 90;
yMax_C = (sC0 * sind(thC))^2 / (2*g); %Highest position
xMax_C = sC0^2 * sind(2*thC)/ g; % Maximum horizontal distance
%[~, yMax_C] = ParabolicMAX(sC0,thC,g)
yMax_C = vpa(yMax_C);
fprintf("The height the 0.3kg particle goes before coming to rest is: %0.3f m\n", yMax_C)
% the height the bullet reaches 
t1 = s0 * sind(th) / g; % Time needed to reach the highest position
% and time to go down 
thB = 0;
D = (s0 * cosd(th) + sB0 *cosd(thB)) * t1;
D = vpa(D);
fprintf("Distance that the 0.7kg particle travels relatively to where it was fired from is: %0.3f m\n", D)
% For the 0.7kg particle