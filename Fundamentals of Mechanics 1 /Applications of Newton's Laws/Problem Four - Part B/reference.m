%% symbolic variables and constants
syms m A w t positive 
r = A * [cos(w*t), sin(w*t)];
% Prove moves in a circle 
R = simplify(norm(r));
fprintf('The radius of the circle the particle moves in is: %s \n', char(R));
% Velocity
%syms t
v2 = diff(r,t);
fprintf('The velocity of the particle is: \n');
pretty(v2)
% Speed
speed = simplify(norm(v2));
fprintf('The speed of the particle is: %s \n', char(speed));
% Acceleration
v2 = diff(r,t);
a2 = diff(v2,t);
fprintf('The acceleration of the particle is: \n');
a2
ac = simplify(norm(a2));
fprintf('The centripetal acceleration of the particle is: %s \n', char(ac));
% Centripetal Force
FC2 = m*ac;
fprintf('The centripetal force on the particle is: %s \n', char(FC2));