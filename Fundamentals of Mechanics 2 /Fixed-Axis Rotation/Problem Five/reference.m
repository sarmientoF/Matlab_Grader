%% symbolic variables and constants
w = 500 * 2 * pi / 60; % rad/s
D = 4.3e-2; % m
Dt = 3 * 60; % s
 
Dth = w * Dt;
 
s = D * Dth;
fprintf('Total distance travelled is: %0.2f m\n',s);