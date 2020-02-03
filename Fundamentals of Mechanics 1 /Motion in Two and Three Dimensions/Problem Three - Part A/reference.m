%% symbolic variables and constants
syms v t positive
 
rr = sym('rr', [1 3]); % Particle position in S' frame
vv = sym('vv', [1 3]); % Particle velocity in S' frame
aa = sym('aa', [1 3]); % Particle aceleration in S' frame
 
Vss = [4, 3, 5];  % Relative velocity of frame S' from S
 
O = [0 0 0];  % Origin in S
OO = O + Vss * t;
 
r = rr + Vss*t ;
 
v = vv + Vss;
 
a = aa + diff(Vss,t);
fprintf('position of the origin in the S frame is: %0.3f \n');
pretty(OO)
fprintf('the relationship formula for particle position (r) is: %0.3f \n');
pretty(r)
fprintf('the relationship formula for particle velocities (v) is: %0.3f \n');
pretty(v)
if diff(Vss,t) == O;
    fprintf('the relationship formula for particle accelerations is the same. \n');
    check = 0;
else
    fprintf('the relationship formula for particle accelerations (a) is: %0.3f \n');
    pretty(a)
    check = 1;
end