%% symbolic variables and constants
m = 1; % kg
v0 = 10; % m/s
R = 2; % m
g = 9.81; % m/s^2
% By using energy conservation
h0 = 0;
E0 = (m*g*h0) + (m*v0^2/2); 
syms vf positive
hf = 2*R;
Ef = (m*g*hf) + (m*vf^2/2);
vf = vpa(solve(E0 == Ef, vf));
fprintf('Speed at the top of the path: %0.3f m/s \n', vf);
% Calculating the tension at the bottom
th0 = 0;
T0 = m * g * cosd(th0) + m * v0^2 / R;
fprintf('Tension at the bottom of the path: %0.3f N \n', T0);
% Calculating the tension at the top
thf = 180;
Tf = T0 + (m * g * cosd(thf) - m * vf^2 / R);
fprintf('Tension at the top of the path: %0.3f N \n', Tf);