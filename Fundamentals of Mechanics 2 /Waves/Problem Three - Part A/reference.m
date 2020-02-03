%% symbolic variables and constants
syms x t
Tension = 70; % N
x0 = 0;  % m
xf = 10; % m
Nodes = [0,2,4,6,8,10];
A_standing = 3e-2; % m
T = 0.1; %s
 
digits(3)
% Properties from the wave functions
lambda = Nodes(3)- Nodes(1);
k = 2 * pi / lambda;
w = 2 * pi / T;
A = A_standing / 2;
 
y1(x,t) = A * sin(k*x - w*t);
y2(x,t) = A * sin(k*x + w*t);
y1_out = y1(x,t);
y2_out = y2(x,t);
fprintf('The wave functions of the two sine waves that produce the standing wave are %s and %s.\n', vpa(y1_out), vpa(y2_out));
% Speeds 
syms yres
yres(x,t) = simplify(y1(x,t)+y2(x,t));
vyMAX = yres(lambda/4,0) * w;
ayMAX = yres(lambda/4,0) * w^2;
vyMAX = vpa(vyMAX);
ayMAX = vpa(ayMAX);
fprintf('The maximum velocity and acceleration of the string are %0.2f m/s and %0.2f m/s^2.\n', vyMAX, ayMAX);