%% symbolic variables and constants
syms L M
syms x dx
dM = M * dx / L; 
dI = dM * x^2; 
I = int(dI/dx, x, -L/6,5*L/6);
fprintf('The moment of inertia is: %s \n', I);