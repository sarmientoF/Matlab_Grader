%% symbolic variables and constants
m = 500e-3; % kg
k = 80; % N/m
uk = 0.2;
th = 30;
g = 9.81; % m/s^2
Dl0 = -10e-2; % m initial deformation
v0 = 0; % m/s
 
% Energy stored in the system when block is just released
EK0 = (k*Dl0^2/2);
fprintf('Energy stored in the system when block is just released: %0.3f J \n', EK0);
% Energy at the beginning
h0 = Dl0 * sind(30);
E0 = (k*Dl0^2/2) + (m*v0^2/2) + (m*g*h0);
% Energy at the top 
syms vf positive
hf = 0;
Dlf = 0;
Ef = (k*Dlf^2/2) + (m*vf^2/2) + (m*g*hf);
% Since there is work from friction 
N = m * g * cosd(th);
f = N * uk;
vf = solve(E0 == Ef + f*(Dlf - Dl0) , vf);
fprintf('Speed of the block at the equilibrium point: %0.3f m/s \n', vpa(vf));
 
% when it comes to rest
syms Dl positive % Distance from the non deformed position
h = Dl* sind(th);
v = 0;
E = (k*Dl^2/2) + (m*v^2/2) + (m*g*h);
% Since there is work from friction 
N = m * g * cosd(th);
f = N * uk;
Dl = solve(Ef == E + f*(Dl - Dlf) , Dl);
x = vpa(subs(Dl - Dl0, 'vf', vf));
fprintf('Highest point the block travels on the incline: %0.3f m \n', vpa(x));