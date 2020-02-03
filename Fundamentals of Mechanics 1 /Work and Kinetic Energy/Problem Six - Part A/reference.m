%% symbolic variables and constants
syms x positive
syms y(x)
y(x) = 10 * (1 + cos(0.1*x));
F(x) = 10 * sin(0.1*x); 
% Since F is tangent to the path 
% int(dot(F,dr)) = int(F*dr)... F // dr
r = [x, y];
DyDx = diff(y,x);
dr = sqrt(1 + DyDx^2);
% Solve 
W1 = int(F * dr,0,10*pi);                        
fprintf('The work done by the force F is: %0.3f J \n\n',W1);