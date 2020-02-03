%% symbolic variables and constants
syms x y
y = 0;
r = [x, y];
dr = [1, diff(y,x)]; 
F1 = [2*y, 3*x]; 
W5 = int(dot(F1, dr),0, 5); % The work is 0, because the x component from F is 0 as well
fprintf('The work done by the force F is: %0.3f J \n\n',W5);