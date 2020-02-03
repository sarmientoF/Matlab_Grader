%% symbolic variables and constants
F1 = [-3, 2, 0];
F2 = [6, -4, 0];
F3 = [2,  5, 0]; 
% acceleration
syms m 
MagA = 4.23;
FN = F1 + F2 + F3; 
a = FN / m; 
fprintf('The particle acceleration is: \n');
pretty(a) 
% Mass of the object
MagFN = norm(FN);
uFN = FN/ MagFN;
%[~, MagFN] = UnitVector(FN);
m = MagFN / MagA;
a = FN / m; % Update the value of acceleration
 
fprintf('The mass of the object is: %0.2f kg\n', m);
 
% Velocity at t = 5
syms t
 
V0 = [0, 0, 0];
V(t) = V0 + a * t; % Velocity as a function of time
 
V5 = V(5);
MagV = norm(V5);
uV = V5/ MagV;
%[~, MagV] = UnitVector(V5); % Speed 
 
fprintf('The speed at t = 5 is: %0.2f m/s \n', MagV);
fprintf('The velocity at t = 5 is: %0.2f i %0.2f j m/s \n', V5(1:2));