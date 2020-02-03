%% symbolic variables and constants
syms L M
 
I0 = 1/12 * M * L^2;
IP = M*(L/3)^2;
I = I0 + IP;
fprintf('The moment of inertia is: %s \n', I);