%% symbolic variables and constants 
syms x(t) v(t) a(t)
 
x(t) = 5 * t^2 - 4 * t^3;
v(t) = diff(x, t);
a(t) = diff(v, t);
range = [0 10];
v2 = v(2);
a2 = a(2);
 
% Find time when v is 0 
tV0 = solve(v == 0, t); 
 
% Calculate the max X(when the velocity is 0)
[xMax, i] = max(x(tV0)); % Find the max x from all the possible values
tMax = tV0(i) ;
 
% Print Results 
fprintf('The velocity and acceleration of the particle as functions of time are: %s \n', char(v), char(a));
 
fprintf('The velocity and acceleration at t = 2.0 s: %0.1f m/s %0.1f m/s^2 \n', v2, a2);
 
fprintf('The time at which the position is a maximum is: %0.3f s \n', tMax);
 
fprintf('The time(s) at which the velocity is zero are: %0.3f s %0.3f s \n', tV0);
 
fprintf('The maximum position is: %0.2f m \n', xMax);