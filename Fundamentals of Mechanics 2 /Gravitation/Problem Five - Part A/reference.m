%% symbolic variables and constants
syms m x 
M_earth = 5.972E24; % kg
M_moon  = 7.3476E22; % kg
D = 3.84E8; % m, mean distance between Earth and Moon
G = 6.67408E-11; % m^3/kg s^2
% Forces by Moon and Earth
% We add sign to include the direction of the gravitational force 
F_earth = sign(0-x)* G * m * M_earth /x^2;
F_moon = sign(D-x) * G * m * M_moon /(D-x)^2;
% Calculate x
x = solve(F_earth + F_moon == 0, x);
x = vpa(x);
fprintf('Location of point from the center of Earth (and going towards the Moon) \n where the net gravitational force of the Earth and the Moon on an object are zero: %0.2e m\n',x);
% We add sign to include the direction of the gravitational force 