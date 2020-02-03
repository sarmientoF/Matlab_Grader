%% symbolic variables and constants
syms T0 r0 
g = 9.81; % m/s^2
m = 0.5; % kg
w0 = 6; % rad/s
th0 = 30; % degrees 
wf = 10; % rad/s
 
% Centipetal force
v0 = w0 * r0;
 
Eq1 = T0 * sind(th0) == m * v0^2 / r0;
Eq2 = T0 * cosd(th0) == m * g;
 
[r0, ~] = solve([Eq1, Eq2], [r0, T0]);
 
% length of the string
l = r0 / sind(th0);
 
% For a change of angular velocity
% Centripetal force
syms thf 
syms Tf 
assume(thf<90 & thf>0)
rf = l * sind(thf);
vf = wf * rf;
 
Eq1 = Tf * sind(thf) == m * vf^2 / rf;
Eq2 = Tf * cosd(thf) == m * g;
 
[thf, ~] = solve([Eq1, Eq2], [thf, Tf]);
thf = vpa(thf);
fprintf('The new angle of the string is: %0.2f degrees\n',vpa(thf));
% Initial and final angular momentum
L0 = vpa(subs(r0^2 * m * w0,th0));
Lf = vpa(subs(rf^2 * m * wf,thf));
fprintf('The initial angular momentum is: %0.3f kg m^2/s\n',L0);
fprintf('The final angular momentum is: %0.3f kg m^2/s\n',Lf);
% it is not possible to be horizontal, w -> inf