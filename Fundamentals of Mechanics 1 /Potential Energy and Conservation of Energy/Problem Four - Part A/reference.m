%% symbolic variables and constants
syms A0 k 
Af = 0.97 * A0; 
E0 = k * A0^2/2;
Ef = k * Af^2/2; 
n = Ef / E0;
lost = vpa((1 - n) * 100);
fprintf('The percentage of mechanical energy lost each cycle is: %0.3f%% \n', lost);