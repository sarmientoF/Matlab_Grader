%% symbolic variables and constants
F1 = [3, 4]; % force
D = [5, 0]; % displacement
W2 = dot(F1,D);
fprintf('The work done by the force F is: %0.3f J \n\n',W2);