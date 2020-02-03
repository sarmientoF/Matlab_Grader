%% symbolic variables and constants
w0 = 0.5 * 2 *pi; % rad/s
wf = 0; % rad
Dt = 10; % s 
R = 20; % m
% Angular acceleration
Dw = (wf - w0)/Dt;
fprintf('The angular acceleration is: %0.3f rad/s^2\n', vpa(Dw));
% Centripetal acceleration
v = w0 * R;
aC = v^2 / R;
fprintf('The centripetal acceleration is: %0.3f m/s^2\n', vpa(aC));
% Total linear acceleration
aT = Dw * R;
a = sqrt(aT^2 + aC^2);
th = atan2d(aT, aC);
fprintf('The total linear acceleration is: [%0.3f m/s^2, %0.3f degrees] \n', vpa(a), vpa(th));