%% symbolic variables and constants
syms t
 
r(t) = [3*t^2, -7*t^3, -5*t^-2]; %[m]
 
range = [0 5]; %[s] 
% Velocity as a function of time
v(t) = diff(r,t);
fprintf('The velocity as a function of time is:');
v
% Acceleration as a function of time
a(t) = diff(v,t);
fprintf('The acceleration as a function of time is:');
a
% Velocity at t = 2
v2 = v(2);
fprintf('The velocity at time t = 2 is: %0.2f i + %0.2f j + %0.2f k m/s \n',v2);
% Speed at t = 1 and t = 3
s1 = vpa(norm(v(1)));
fprintf('The speed at time t = 1 is: %0.1f m/s \n',s1);
s3 = vpa(norm(v(3)));
fprintf('The speed at time t = 3 is: %0.1f m/s \n',s3);
% Average velocity
r(2);
r(1);
v21 = r(2)-r(1) / ( 2 - 1);
fprintf('The velocity at time t = 2 is: %0.2f i + %0.2f j + %0.2f k m/s \n',v21);