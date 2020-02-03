%% symbolic variables and constants
m = 10; % kg
th = 30;
Dl = 0.75; % m
k = 500; % N/m
H = 2; % m
g = 9.81; % m/s^2
% By using energy, we can caluculate the velocity at the bottom
E0 = m*g*H;
% Energy after the slope 
syms v1 positive
E1 = m*v1^2/2;
E2 = k*Dl^2/2;
v1 = solve(E1 == E2, v1);
fprintf('Speed of the object at the bottom of the incline: %0.3f m/s \n',vpa(v1));
% Work done by friction
frictionW = E2 - E0;
fprintf('Work due to friction on the object while it is on the incline: %0.3f J \n',vpa(frictionW));
% Since there is no friction on the horizontal plane 
v2 = v1;
fprintf('Speed of the object at the base of the incline: %0.3f m/s \n',vpa(v2));
% Using energies 
syms h positive
E3 = m*v2^2/2;
E4 = m*g*h;
% Since the work done by friction is proportional to the distance
h = solve(E3 + frictionW* h/H == E4,h);
fprintf('Vertical distance up the incline: %0.3f m \n',vpa(h));