%% symbolic variables and constants
% part 1
AU = 1.496E11; % m
rP = 1.13 * AU; % m 
rA = 1.78 * AU; % m
G = 6.67408E-11; % m^3/kg s^2
M_sun = 1.989E30; % kg
 
% Semimajor axis 
a = (rP + rA)/2; 
T = sqrt(4 * pi^2 * a^3 / (M_sun * G));
% Period in years
Year = 365 * 24 * 60 * 60; % s
T_years = T / Year;
fprintf('The period of the orbit of Eros is %0.2f years\n', T_years);
% part 2
m = 1; % kg , for kg of mass
AU = 1.496E11; % m
r = 1.5 * AU; % m
v = 24.3E3; % m/s
M_sun = 1.989E30; % kg
G = 6.67408E-11; % m^3/kg s^2
% Total energy for kg of mass
E = (m *v^2/2) + (-G * m * M_sun /r );
E = vpa(E);
if E < 0
    disp('Orbit of comet is bounded')
    check = 1;
else
    disp('Orbit of comet is unbounded')
    check = 0;
end
% Since the total energy is negative, it means that is bound orbit