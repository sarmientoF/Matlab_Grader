%% symbolic variables and constants
syms x t
AR = 0.06; % m
k = 3; % 1/m
w = 6; % 1/s
phi = 1.2 * 2;
 
yR(x,t) = AR * sin(k*x+phi/2)*cos(w*t+phi/2);
 
% From the previous problem
y1(x,t) = AR/2 * sin(k*x - w*t);
y2(x,t) = AR/2 * sin(k*x + w*t + phi);
yfinal(x,t) = y1(x,t) + y2(x,t);
fprintf('The wave functions are %s and %s \n',y1(x,t), y2(x,t));
% Confirmation
Ans = simplify(yfinal(x,t)-yR(x,t));
% PLOT
y1_ans = y1(x,1);
y2_ans = y2(x,1);
yR_ans = yR(x,1);
yfinal_ans = yfinal(x,1);
figure()
ez1 = fplot(y1(x,1),[0,18]); % red color
set(ez1,'color',[1 0 0])
hold on
ez2 = fplot(y2(x,1),[0,18]); % green color
set(ez2,'color',[0 1 0])
hold on
ez3 = fplot(yR(x,1),[0,18]); % blue color
set(ez3,'color',[0 0 1])
hold on
ez4 = fplot(yfinal(x,1),[0,18]); % black color
set(ez4,'color',[0 0 0])
grid on
title('Wave Function vs. Time')
xlabel('x(m)')