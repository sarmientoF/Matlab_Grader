%% symbolic variables and constants
syms vf positive
m = 1; % Undefined but assume
Hf = 200; % m
H1 = 100; % m
v1 = 100; % m/s
g = 9.81; % m/s^2
% Since there is energy conservation
E0 = KinecticE(m, v1) + PotentialE(m, g, H1);
Ef = KinecticE(m, vf) + PotentialE(m, g, Hf);
 
vf = solve(E0 == Ef, vf);
fprintf('d) Final velocity: %0.3f m\n', vf)
%FUNCTIONS
function G = PotentialE(m, g, h)
    G = m * g * h;
end
function K =  KinecticE(m, v)
    K = m *v^2/2;
end