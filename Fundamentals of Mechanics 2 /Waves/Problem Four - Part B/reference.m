%% symbolic variables and constants
syms x t v
Dt = 3; % s  
y(x,t) = 4 * exp(-((x+2*t)/1)^2);
 
% since the amplitude of the wave remains constant 
v = -diff(y,t)/ diff(y,x);
v = simplify(v);
fprintf('Direction and speed of the pulse (on x-axis) is: %0.1f m/s\n',vpa(v));
% speed = solve(diff(y,x,2) == 1/v^2 * diff(y,t,2), v)
Dx = v * Dt;
fprintf('Distance wave has moved in 3 seconds is: %0.1f m\n',vpa(Dx));
 
% plot fuction
x = linspace(-3*pi,3*pi);
y1 = y(x,0);
y2 = y(x,3);
figure
p = plot(x,y1,x,y2);
title('Wave Function vs. Time')
xlabel('x(m)')