%% symbolic variables and constants
 
syms m1 m2 positive
syms t positive
r1(t) = [4*cos(2*t), 4*sin(2*t)];
rCM(t) = [3*cos(2*t), 3*sin(2*t)];
% Radius of circle 1
R1 = simplify(norm(r1));
fprintf('The radius of the circle in which particle one moves is: %0.1f m\n', R1)
% The coordinates of particle 2
r2 = (rCM * (m1+m2) - r1*m1)/ m2;
r2 = simplify(r2);
fprintf('The x and y coordinates of particle 2 is:\n')
pretty(r2)
R2 = simplify(norm(r2));
fprintf('The radius of the circle in which particle 2 moves is:\n')
pretty(R2)
% There is an error in the book's solution, the sign of r2 is wrong
% therefore, R2 is also wrong 