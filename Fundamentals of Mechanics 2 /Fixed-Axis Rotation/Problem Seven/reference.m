%% symbolic variables and constants
syms t real
% Angular velocity
alp = 2 - 3 * t; % rad/s
w0 = 0;
w(t) = w0 + int(alp, t,0,t);
W = simplify(w(t));
fprintf('The angular velocity is: %s rad/s\n', W);
% Angular position
th(t) = int(w,t,0,t);
Th = simplify(th(t));
fprintf('The angular position is: %s rad\n', Th);
% Angular position at 10 seconds
Th10 = th(10);
fprintf('The angular position at t = 10 s is: %s rad\n', Th10);
% Vector position
rotation = Th10 / (2*pi);
rotation = rem(rotation,1);
rotation = vpa(subs(rotation * 360));
fprintf('At t = 10 s the vector is at: %0.2f degrees\n', rotation);