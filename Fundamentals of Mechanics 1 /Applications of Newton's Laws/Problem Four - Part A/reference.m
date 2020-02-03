%% symbolic variables and constants
syms t real
 
m = 0.5; % kg
r = [4*cos(3*t), 4*sin(3*t)];
 
% Velocity 
v = diff(r,t);
fprintf('The velocity vector as a function of time is: \n');
pretty(v)
% Accelearion
a = diff(v,t);
fprintf('The acceleration vector as a function of time is: \n' );
pretty(a)
% Acceleration towards the center
n = a./r; % If n is a vector multiple of k*  [1 1], then a is parallel to r
fprintf('If n is a vector multiple of k*[1 1], then a is parallel to r: \n');
pretty(n)
% Centripetal Force
FC = m * a; % Since the acceleration always points towards the center
fprintf('The centripetal force on the particle is: \n');
pretty(FC)