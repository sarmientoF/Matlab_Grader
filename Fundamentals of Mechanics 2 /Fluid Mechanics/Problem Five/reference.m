%% symbolic variables and constants
syms DP r n L
% By Poiseuille’s law
Q(DP, r, n, L) = DP * pi * r^4/ (8*n*L);
 
Q0 = 100; % m^3/s
% For 1.5 DP
Qf15 = (Q0 * Q(1.5*DP, r, n, L)/ Q(DP, r, n, L));  
Qf15 = vpa(Qf15);
fprintf('New flow rate for a pressure difference increasing by a factor of 1.50: %0.2f cm^3/s\n',Qf15);
% For 3 * n
Qf3 = (Q0 * Q(DP, r, 3*n, L)/ Q(DP, r, n, L));  
Qf3 = vpa(Qf3);
fprintf('New flow rate for when a new fluid with 3.00 times greater viscosity is substituted: %0.2f cm^3/s\n',Qf3);
% For 4 * L
Qf4 = (Q0 * Q(DP, r, n, 4*L)/ Q(DP, r, n, L));
Qf4 = vpa(Qf4);
fprintf('New flow rate for when the tube is replaced by one having 4.00 times the length: %0.2f cm^3/s\n',Qf4);
% For 0.1 *r
Qf01 = (Q0 * Q(DP, 0.1*r, n, L)/ Q(DP, r, n, L));
Qf01 = vpa(Qf01);
fprintf('New flow rate for when another tube is used with a radius 0.100 times the original: %0.2f cm^3/s\n',Qf01);
% For 0.1 *r, L/2 and DP*1.5
Qf2 = (Q0 * Q(1.5*DP, 0.1*r, n, L/2)/ Q(DP, r, n, L));
Qf2 = vpa(Qf2);
fprintf('New flow rate for when another tube is substituted with a radius 0.100 times the original and half the length,\n and the pressure difference is increased by a factor of 1.50: %0.2f cm^3/s\n',Qf2);