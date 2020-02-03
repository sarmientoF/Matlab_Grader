%% symbolic variables and constants
T = 4E4; % N
th1 = 80;
alp = 90; 
th2 = 30;
D = 18e-2; % m
L0 = 15; % m
 
Y = 15E9 / 2; % N/m^2
S = 10E9 / 2; % N/m^2
 
A = pi * D^2 / 4;
 
F_Y = 2 * T * cosd(th1);
F_R = T * sind(th1) *  sqrt(2 - 2 * cosd(alp));
 
%Compression and bending of pole
DL = L0 * F_Y / Y / A;
DX = L0 * F_R / S / A;
fprintf('The pole compresses %0.6f m and bends %0.6f meters.\n', DL, DX);
% The tension in the guy wire
Tgw = F_R / sind(th2);
fprintf('The tension in the guy wire is: %0.2e N\n', Tgw);