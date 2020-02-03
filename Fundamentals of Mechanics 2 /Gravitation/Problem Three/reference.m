%% symbolic variables and constants
T = 2.6E8 * 365 * 24 * 60 * 60; % s  
R = 3E4 * 3E8 * 365 * 24 * 60 * 60; % m 
 
w = 2 * pi / T;
 
v_sun = w * R;
aC_sun = v_sun^2 / R;
fprintf('The centripetal acceleration and average speed of the Sun in its galactic orbit are: %0.3E m/s^2 and %0.3E m/s\n', aC_sun, v_sun);