%% symbolic variables and constants
L = 2; % m
M = 3; % kg, body A
m = 1; % kg, body B
r = 0.3; % m
g = 9.81; % m/s^2
th0 = 30;
thf = 0;
% Find the CoM
xCM = (m * r + M * (L/2 + 2 * r)) / (m + M);
I = 2/5 * m *r^2 + m*r^2 + 1/12 * M * L^2 + M * (L/2 + 2*r)^2;
D_PotentialE = (m+ M) * g * xCM * (cosd(thf) - cosd(th0));
% Kinetic energy
syms wf positive
w0 = 0;
D_KineticE = (I*wf^2/2) - (I*w0^2/2);
wf = solve(D_KineticE == D_PotentialE, wf);
wf = vpa(wf);
fprintf('Angular velocity of the pendulum at its lowest point is: %0.2f rad/s\n',wf);