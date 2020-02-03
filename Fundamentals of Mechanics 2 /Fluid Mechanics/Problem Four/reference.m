%% symbolic variables and constants
syms rho g k m z
syms T(p)
r = -6.5e-3; % K / m
P0 = 1.013E5; % Pa
T0 = 293; % k
DH = 3E3; % m
R = 2.869E2; % m
g = 9.81; % m/s
Dz = 3E3; % m
 
% By using the general equation 
% its a bit hard to solve the differential equation here
P = P0 * ((T0+Dz*r)/T0)^(-R*r/g);
P = vpa(P);
fprintf('Estimation of the pressure 3.0 km above the surface of Earth: %0.3E Pa\n',P);