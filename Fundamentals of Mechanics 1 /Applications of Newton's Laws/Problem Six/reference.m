%% symbolic variables and constants
syms w positive
R = 15; % m 
g = 9.81; % m/s^2
% For 10g 
v = w * R;
a10g = v^2/R;
w10g = solve(a10g == 10 * g);
fprintf('The angular velocity at 10g is: %0.3f cm \n', w10g); 
% For an angle theta at 10g
syms m posit 
aC = 10 * g;
aW =  g;
th = atan2d(aW,aC); 
fprintf('The angle below the horizontal that the cage will hang when the centripetal acceleration is 10g is: %0.3f° \n', th);