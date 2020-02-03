%% symbolic variables and constants
syms x(t)
syms m postive
syms k postive
syms A positive
syms w postive
syms phi real
 
x(t) = A * sin(w*t +phi);
 
F = m * diff(x,t,2);
 
T = 2*pi / sqrt(k/m) % We know this from the theory 
 
wSol = solve(F == -k*x,w);
 
% w = can take different values, but w > 0 and doesnt
% depend on t, so w =  (k*m)^(1/2)/m
%  
%   (k*m)^(1/2)/m
%          -phi/t
%  -(k*m)^(1/2)/m
 
wSol = wSol(1);
TSol = 2 * pi / wSol
%% GRAPH
% For A = 10, w = pi, phi = pi/2
A = 10; % m
w = pi; % rad/s
phi = pi/2; % rad
 
x(t) = A * sin(w*t + phi);
 
plt = ezplot(x,[0,10])
grid on