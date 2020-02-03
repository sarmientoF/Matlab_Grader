%% symbolic variables and constants
syms m A R r th positive
syms dr dth positive
A = pi * R^2;
rho = m * r / A / R;
dA = r * dr * dth; 
dI = rho * dA * r^2;
I_th = int(dI/dth, th, 0, 2*pi);
I_r = int(I_th / dr, r, 0, R);
fprintf('The moment of inertia is: %s \n', I_r);