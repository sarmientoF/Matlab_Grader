%% simbolic variables  and constants
syms m c
syms u(t)
 
p = m * u / sqrt(1 - u^2/c^2);
F = diff(p, t);
F_A = simplify(F);
%pretty(F)