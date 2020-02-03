%% symbolic variables and constants
m = 2; %kg
v0 = 10; %m/s
th = 37; % degrees
uK = 0.30;
g = 9.81; %m/s^2 
% Initial Energy
h0 = 0; %m
K0 = m *v0^2/2;
P0 = m * g * h0; 
% Final Energy
syms D
vf = 0; %m/s
hf = D * sind(th); %m
Kf = m *vf^2/2;
Pf = m * g * hf; 
% Work Done by Friction
N = m*g*cosd(th);
f = N * uK;
FrictionWork = f * D;
% Solve via Energy Conservation
D = solve(K0 + P0 == Kf + Pf + FrictionWork,D);
fprintf('The distance the block slides along the plane before momentarily coming to rest is: %0.3f m \n',D)
% Part B 
% Initial Energy
h0 = 0; %m
K0 = m *v0^2/2;
P0 = m * g * h0; 
% Final Energy
syms vf positive
hfB = h0;
KfB = m *vf^2/2;
PfB = m * g * hfB;
% Work Done by Friction
NB = m*g*cosd(th);
fB = NB * uK;
FrictionWork = fB * 2 * D;
% Solve via Energy Conservation
vf = solve(K0 + P0 == KfB + PfB + FrictionWork,vf);
fprintf('The speed when it reaches the bottom is: %0.3f m/s \n',vf)