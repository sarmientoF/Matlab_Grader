%% symbolic variables and constants
syms x t
spi = sym(pi);
 
A = 0.03; % m
k = 1.26; % 1/m
w = pi; % 1/s
phi = spi/10; % rad
 
y1(x,t) = A *sin(k*x -w*t);
y2(x,t) = A *sin(k*x +w*t + phi);
yR(x,t) = 2 * A * sin(k*x+phi/2) * cos(w*t+phi/2);
 
[solx, param, cond] = solve(yR(x,0) == 0,x,'ReturnConditions', true);
X = subs(solx,param, [1,2,3]);
fprintf('The location of the node is at: %0.3f m\n', X);
% PLOT
figure()
ez1 = fplot(y1(x,1),[0,8]); % red color
set(ez1,'color',[1 0 0])
hold on
ez2 = fplot(y2(x,1),[0,8]); % green color
set(ez2,'color',[0 1 0])
hold on
ez3 = fplot(yR(x,1),[0,8]); % blue color
set(ez3,'color',[0 0 1])
grid on
title('Wave Function vs. Time')
xlabel('x(m)')