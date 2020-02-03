%% symbolic variables and constants
F1 = [3, 4]; % force
D1 = [5, 0]; % displacement
D2 = [0, 6]; % displacement
W3 = dot(F1,D1) + dot(F1,D2);
fprintf('The work done by the force F is: %0.3f J \n\n',W3);