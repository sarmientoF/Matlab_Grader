%% symbolic variables and constants
T = 33.5e-3; % s
R = 10E3; % m
M = 2.8E30; % kg
 
% Angular velocity
w = 2 * pi / T;
% Inertia of planet
I = 2/5 * M * R^2;
% Angular momentum
L = I *  w;
fprintf('The angular momentum of the pulsar is: %0.3E kg m^2/s\n', L);
% When w decreases at a rate of 10e-14 rad/s^2
DwDt = -10e-14; % rad/s^2
T = I  * DwDt;
fprintf('The torque on the pulsar is: %0.3E N m\n', T);
% There is an error in the solution of the book (we are correct)