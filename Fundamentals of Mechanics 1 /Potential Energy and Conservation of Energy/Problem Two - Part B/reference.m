%% symbolic variables and constants
m = 200e-3; % kg
R = 2; % m
v0 = 0; % m/s
th0 = 30;
g = 9.81; % m/s^2
 
% Since there is energy conservation
h0 = R * (1 - cosd(th0));
E0 = (m*g*h0) + (m*v0^2/2); 
 
% The velocity at the bottom
syms v_bottom positive
th1 = 0;
h1 = R * (1 - cosd(th1));
E_bottom = (m*g*h1) + (m*v_bottom^2/2); 
 
v_bottom = vpa(solve(E0 == E_bottom,v_bottom));
fprintf('Speed of the ball when the string is vertically down: %0.3f m/s \n', v_bottom);
 
% The velocity at 20 degrees
syms v_20d positive
th2 = 20;
h2 = R * (1 - cosd(th2));
E_bottom = (m*g*h2) + (m*v_20d^2/2); 
 
v_20d = vpa(solve(E0 == E_bottom, v_20d));
fprintf('Speed of the ball when the string is at 20 degrees: %0.3f m/s \n', v_20d);
 
% The velocity at 10 degrees
syms v_10d positive
th3 = 10;
h3 = R * (1 - cosd(th3));
E_bottom = (m*g*h3) + (m*v_10d^2/2); 
 
v_10d = vpa(solve(E0 == E_bottom, v_10d));
fprintf('Speed of the ball when the string is at 10 degrees: %0.3f m/s \n', v_10d);