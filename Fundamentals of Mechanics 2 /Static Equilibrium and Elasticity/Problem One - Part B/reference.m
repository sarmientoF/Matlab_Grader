%% symbolic variables and constants
syms F
F_vec = [F*[1,0,0]
         2000*[0,-1,0]
         1000*[-1,0,0]];
R_vec = [[-4, 2, 0]
         [-2, 0, 0]
         [2, -3, 0]];
      
[M,~] = Torque(F_vec, R_vec);
 
% Since the bar is not rotating, M = [0,0,0]
FSol = solve(M == [0,0,0], F);
fprintf('Magnitude of force F is: %0.1f N\n',vpa(FSol));
% Update the value of F in terms of sums of vectors
F_vec = subs(F_vec, F, FSol);
[~, P, th, ~] = Torque(F_vec, R_vec);
fprintf('Force applied at point P has magntidue of %0.1f N and is applied in a direction %0.2f degrees from the horizontal.\n',vpa(P), vpa(th));
%FUNCTION (BUT NOT CHECKED)
function [M,F,th,alp] = Torque(F_vec, R_vec)
    % F is the force from the pivot
    % th is the angle in spherical coordinates
    % alp angle in spherical coordinates
    M = [0,0,0]; 
    for i = 1:length(F_vec)
        M = M + cross(R_vec(i,:),F_vec(i,:));
    end
    F =-sum(F_vec);
    [th, alp, F] = cart2sph(F(1),F(2),F(3));
    th = th * 180/ pi;
    alp = alp * 180/ pi;
end