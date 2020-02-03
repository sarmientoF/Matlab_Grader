%% symbolic variables and constants
k1 = 204; % N/m (0<=x<=4.88)
k2 = 111; % N/m (4.88<=x)
x0 = 0; % m
x1 = 4.88; % m
xf = 16.7; % m
% Tension
T1 = k1*x1;
T2 = k2*(xf-x1);
T = T1 + T2;
fprintf('The elastic force at x = 16.7m is: %0.3f N \n',T) 
% Work
W1 = (k1*(x0-x1)^2)/2;
W2 = (k2*(x1-xf)^2)/2;
W = W1 + W2;
fprintf('The work done to strech the cord to x = 16.7 m is: %0.3f J \n\n',W);