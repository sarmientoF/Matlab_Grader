%% symbolic variables and constants
syms m1 m2 t positive
spi = sym(pi);
r1 = [4*cos(2*t), 4*sin(2*t)];
r2 = [2*cos(3*t-spi/2), 2*sin(3*t-spi/2)];
% R1 and R2
R1 = simplify(norm(r1));
R2 = simplify(norm(r2));
fprintf('The radius of the circle in which particle one moves is: %0.1f m\n', R1)
fprintf('The radius of the circle in which particle two moves is: %0.1f m\n', R2)
rCM = (r1*m1 + r2*m2)/(m1+m2);
R_CM = simplify(rCM);
fprintf('The x and y coordinates of the center of mass is:\n')
pretty(R_CM)
% Calculate the radius of the "trajectory"
% It is not constant, then not a circle 
fprintf('The radius of the trajectory in which the center of mass moves is:\n')
pretty(simplify(norm(R_CM)))
% This is not a circle, can check the plot 
% Need real values of mass to plot 
m1 = 1;
m2 = 1;
r = subs(R_CM);
fprintf('Trajectory of the center of mass for unit masses m1 and m2 is:\n')
pretty(r)
ezplot(r(1),r(2))
grid on