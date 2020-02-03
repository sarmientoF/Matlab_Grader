%% symbolic variables and constants
syms m x 
M_earth = 5.972E24; % kg
M_sun = 1.989E30; % kg
D = 1.496E11; % m, mean distance between Earth and Sun
G = 6.67408E-11; % m^3/kg s^2
% Forces by Sun and Earth
% We add sign to include the direction of the gravitational force 
F_sun = sign(0-x)* (G * m * M_sun /x^2);
F_earth = sign(D-x) * (G * m * M_earth /(D-x)^2);
% Calculate x
x = solve(F_earth + F_sun == 0, x);
x = vpa(x);
fprintf('Location of point from the center of Sun (and going towards the Earth) \n where the net gravitational force of the Earth and the Sun on an object are zero: %0.2E m\n',x);
% We add sign to include the direction of the gravitational force 