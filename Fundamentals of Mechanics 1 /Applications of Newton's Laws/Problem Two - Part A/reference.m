%% symbolic variables and constants 
syms v positive
R = 15; % m
g = 9.81; % m/s^2
aC_top =  v^2 / R; % Centripetal acceleration at the top 
a_top = 1.5 * g;
% Velocity at the top
vTop = solve(a_top == aC_top , v); % a_top (total acceleration) is the same as aC_top  
fprintf('The velocity at the top is: %0.3f m/s \n', vTop);
 
% Calculate the height 
syms h0 m
v0 = 0;
K0 = m *v0^2/2;
G0 = m * g * h0;
vf = vTop;
hTop = 0;
Kf = m *vf^2/2;
Gf = m * g * hTop; 
h0 = solve(K0 + G0 == Kf + Gf, h0); % Conservation of energy
fprintf('The height to start the roller coaster is: %0.3f m\n', h0);
 
% Calculate the energy lost due to friction
m = 1500; 
v1 = 0;
h1 = h0 + 5;
K1 = m *v1^2/2;
G1 = m * g * h1;
vf = vTop;
hTop = 0;
Kf = m *vf^2/2;
Gf = m * g * hTop; 
E_friction = G1 + K1 - Gf - Kf;
fprintf('The energy lost due to friction is: %0.3e J\n', E_friction);