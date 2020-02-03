%% symbolic variables and constants dfdfdfhghghggfgfhfghfgfghfg
F1 = [-2.4, -6.1, 0];
F2 = [8.5, -9.7, 0];
% Net force
FN = F1 + F2;
 
fprintf('The net force is: %0.2f i %0.2f j N \n',FN(1:2));
 
% Magnitude and Orientation of Force
MagF = norm(FN); % magnitude
thF = atan2d(FN(2),FN(1)); % Angle in plane XY from +x to +y
phiF = asind(FN(2)/ MagF); % Angle between Z and Vector from +Z to the Vector
%[MagF, thF, ~] = VectorMagDir(FN);
 
fprintf('The magnitude of the force is: %0.2f N \n',MagF);
fprintf('The direction of the force is: %0.2f  \n',thF);
fprintf(' The direction of the force is: %0.2f  \n',thF);
 
% For a mass of 125kg
 
m = 125; % kg
 
aN = FN/ m;
 
fprintf('The acceleration is: %0.3f i %0.3f j m/s^2 \n',aN(1:2));
 
% Magnitude and Orientation of acceleration
MagA = norm(aN); % magnitude
thA = atan2d(aN(2),aN(1)); % Angle in plane XY from +x to +y
phiA = asind(aN(2)/ MagA);
%[MagA, thA, ~] = VectorMagDir(aN); % M
 
fprintf('The magnitude of the acceleration is: %0.2f N \n',MagA);
fprintf('The orientation of the acceleration is: %0.2f  \n',thA);