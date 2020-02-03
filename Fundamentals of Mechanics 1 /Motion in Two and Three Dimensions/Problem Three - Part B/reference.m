%% symbolic variables and constants
syms v t positive
rr = sym('rr', [1 3]); % Particle position in S' frame
vv = sym('vv', [1 3]); % Particle velocity in S' frame
aa = sym('aa', [1 3]); % Particle aceleration in S' frame
Vss = [1, 2, 3]*t; % Relative velocity of frame S' from S
O = [0 0 0]; % Origin in S
% Need to integrate the relative velocity from t=0 to t 
OO = O + int(Vss,t,0,t); % Origin in S'
r = rr + OO ; 
v = vv + Vss;
% Acceleration needs the derivate of Vss in time 
a = aa + diff(Vss,t);
fprintf('position of the origin in the S frame is: %0.3f \n');
OO
fprintf('the relationship formula for particle position (r) is: %0.3f \n');
r
fprintf('the relationship formula for particle velocities (v) is: %0.3f \n');
v
if diff(Vss,t) == O;
    fprintf('the relationship formula for particle accelerations is the same. \n');
    check = 0;
else
    fprintf('the relationship formula for particle accelerations (a) is: %0.3f \n');
    a
    check = 1;
end