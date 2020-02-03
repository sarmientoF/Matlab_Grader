%% Part 2
syms y(t)
syms v0 y0
 
g = -9.81; % m/s^2 hola
y0 = 0; % m
v0 = 0; % m/s
yf = -75; % m
 
y(t) = y0 + v0*y + 1/2 * g *t^2;
 
y1 = y(1) - y(0);
 
% Calculate the final velocity
vf = -sqrt(v0^2 + 2 * g * (yf - y(0)));
 
% Calculate the distance traveled in the last second
tf = (vf - v0) / g;
 
D = vpa(y(tf) - y(tf-1));
D = double(D); %When we use variables of type double, we can add tolerance for assessment<assessVariableEqual('D', referenceVariables.D*1.01,'RelativeTolerance',0.05);>
% Print results
 
fprintf('The distance traveled in the first second is: %0.1f m \n', y1);
fprintf('The final velocity is: %0.1f m/s \n', vf);
fprintf('The distance traveled in the last second is: %0.1f m \n', D);