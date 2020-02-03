%% symbolic variables and constants
syms lambda Re T positive
r = Re * cosd(lambda);
v = 2 * pi * r / T;
ac = v^2 / r;
fprintf('The centripetal acceleration formula is: %s \n\n', ac);
% For lambda = 40
g = 9.81; % m/s^2
ac40 = subs(ac, [lambda, Re, T], [40, 6.37E6, 24*3600]);
ac40g = ac40 / g * 100;
fprintf('The centripetal acceleration at lambda = 40 is %0.3f m/s^2 \n', ac40);
fprintf('The centripetal acceleration at lambda = 40 is %0.3f%% of g \n', ac40g);