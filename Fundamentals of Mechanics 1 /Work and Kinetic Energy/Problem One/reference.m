%% symbolic variables and constants
syms F 
D = 108E3;
v = 30; % m/s
Gas = 2; % Gal
n = 30e-2; % %
uGas = 140E6; % J/Gal
 
% Force to keep moving at constant v
W = F * D;
E_gas = n * uGas * Gas;
F30 = solve(W == E_gas, F);
fprintf('the magnitude of the force exerted to keep the car moving at constant speed is: %0.3f N \n',F30)
% For a force proportional to speed
syms Gas28 
F28 = F30 * 28/30;
W = F28 * D;
E_gas28 = n * uGas * Gas28; 
Gas28 = solve(W == E_gas28, Gas28);
fprintf('the # of gallons that will be used to drive 108 km at a speed of 28.0 m/s is: %0.3f Gal \n',Gas28)