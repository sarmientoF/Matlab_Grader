%% symbolic variables and constants
m = 15e-3; %kg
v0 = 3; %m/s
g = 9.81; %m/s^2
th = 90;
% Kinetic energy when leaving the hand
K0 = m *v0^2/2;
fprintf('Kinetic energy when the ball leaves the hand: %0.3f J\n', K0)
 
% Calculate the highest point
%[~, hMax] = ParabolicMAX(v0,th,g);
hMax = (v0 * sind(th))^2 / (2*g);
 
% Work by gravity
h0 = 0;
W = m * g;
gravityW = W * (h0-hMax);
fprintf('Work done by gravity during rise to peak: %0.3f J\n', gravityW)
% Change in gravitational potential energy
CgravityPE = -gravityW;
fprintf('Change in the gravitational potential energy during rise to peak: %0.3f J\n', CgravityPE) 
 
% Potential energy when it reaches the top
potentialE0a = PotentialE(m,g,h0);
potentialEhfa = ((PotentialE(m,g,hMax) + potentialE0a) - (PotentialE(m,g,h0) - potentialE0a));
fprintf('Gravitational potential energy at the maximum height: %0.3f J\n', potentialEhfa)
  
% Potential energy when it leaves the hand
potentialE0b = PotentialE(m,g,hMax);
potentialEhfb = ((PotentialE(m,g,hMax) - potentialE0b) - (PotentialE(m,g,h0) + potentialE0b));
fprintf('Gravitational potential energy when it leaves the hand: %0.3f J\n', potentialEhfb)
 
% The max Height 
hMax;
fprintf('Maximum height reached by the ball: %0.3f m\n', hMax)
%FUNCTIONS
%function[xMax, yMax] = ParabolicMAX(v,th,g)
    %g [m/s^2]
    % th in degree
%    yMax = (v * sind(th))^2 / (2*g); %Highest vertical distance
%    xMax = v^2 * sind(2*th)/ g; % Maximum horizontal distance
%end
function G = PotentialE(m, g, h)
    G = m * g * h;
end