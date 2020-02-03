%% symbolic variables and constants
m = 200e-3; % kg
k = 50; % N/m
g = 9.81; % m/s^2
 
% Initial energy
v0 = 0; % m/s
h0 = 0; % m
Dl0 = 0; % m
 
PotentialE0 = 0 + ElasticE(k, Dl0); % Potential(=0), elastic
E0 = KinecticE(m,v0) + PotentialE0; % Kinetic, potential(=0), elastic
 
% At the lowest point
PotentialE_lowest = 0; % Since is the kinetic energy at the lowest is 0 ( v = 0)
fprintf('The potential energy at the lowest is: %0.3f J \n', PotentialE_lowest);
 
% At the lowest point
syms Dlf positive
 
h_low = -Dlf;
Dl_low = -Dlf;
 
Dlf = solve(PotentialE_lowest == PotentialE(m,g,h_low) + ElasticE(k,Dl_low), Dlf);
 
% At the middle point
syms v_mid positive
 
h_mid = -Dlf/2;
Dl_mid = -Dlf/2;
PotentialE_mid = PotentialE(m,g,h_mid) + ElasticE(k,Dl_mid);
E_mid = KinecticE(m,v_mid) + PotentialE_mid;
 
% Since there is energy conservation
v_mid = solve(E_mid == 0, v_mid);
fprintf('The velocity at the middle is: %0.3f m/s \n', v_mid);
 
% Update the potential energy value
PotentialE_mid = PotentialE(m,g,h_mid) + ElasticE(k,Dl_mid);
fprintf('The potential energy at the middle is: %0.3f J \n', PotentialE_mid);
%FUNCTIONS
function E = ElasticE(k,Dx)
    E = k * Dx^2/2;
end
function G =  PotentialE(m, g, h)
    G = m * g * h;
end
function K =  KinecticE(m, v)
    K = m *v^2/2;
end