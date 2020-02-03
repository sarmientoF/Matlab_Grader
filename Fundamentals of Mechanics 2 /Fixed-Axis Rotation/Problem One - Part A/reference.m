%% symbolic variables and constants
w0 = 0; % rad/s
wf = 100000 * 2 * pi /60; % rad/s
Dt = 2 * 60; % s
% Average angular acceleration
Dw = (wf - w0) / Dt;
fprintf('The average angular acceleration is: %0.3f rad/s^2\n', vpa(Dw));
% Tangential acceleration
R = 0.095; % m
aT = R * Dw;
fprintf('The tangential acceleration at 9.50 cm from the rotational axis is: %0.3f rad/s^2\n', vpa(aT));
% Tangential velocity
v = wf * R;
% Centripetal acceleration
aC = v^2 / R;
fprintf('The centripetal acceleration at 9.50 cm from the rotational axis is: %0.3E m/s^2\n', vpa(aC));
% aC in g times
g = 9.81;
aC_G = aC / g;
fprintf('The centripetal acceleration at 9.50 cm from the rotational axis is: %0.3E g\n', vpa(aC_G));
% Distance
Dth = (wf^2 - w0^2)/(2 * Dw);
s = R * Dth;
fprintf('The total distance travelled by a point at 9.50 cm from the rotational axis is: %0.3E m\n', vpa(s));