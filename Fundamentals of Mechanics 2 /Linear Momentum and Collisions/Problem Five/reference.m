%% symbolic variables and constants
M_bike = 10; % kg
v0 = 15; % m/s
M_bug = 5e-3; % kg
v_bug = 2; % m/s
M_person = 60; % kg
% Initial momentum, A is the system bike human
P0_A = (M_bike + M_person) * v0;
fprintf('The initial momemtum is: %0.1f kg m/s \n',P0_A);
% Initial momentun bug
P0_bug = M_bug * v_bug;
fprintf('The initial momemtum of the bug is: %0.3f kg m/s \n',P0_bug);
% Since there is conservation of momentum
syms vf
P0_total = P0_A + P0_bug;
Pf_total = (M_person + M_bike + M_bug)*vf;
vf = solve(P0_total == Pf_total, vf); 
Dv = vpa(vf - v0);
fprintf('The change in velocity due to the collision with the bug is: %0.5f m/s \n',Dv);
% for opposite direction 
syms vf
P0_total = P0_A - P0_bug;
Pf_total = (M_person + M_bike + M_bug)*vf; 
vf = solve(P0_total == Pf_total, vf);
Dv2 = vpa(vf - v0);
fprintf('The change in velocity due to the collision with the bug (going in opposite direction) is: %0.5f m/s \n',Dv2);