%% symbolic variables and constants
m = 0.05; % kg
h0 = 70; % m
hf = 3; % m
g = 9.81; % m/s^2
% Work done by gravity during the drop
W = m * g;
gravityW = W * (h0-hf);
fprintf('Work done by gravity during the drop: %0.3f J\n', gravityW)
% Change in potential energy
DpotentialE = -(PotentialE(m,g,hf) - PotentialE(m,g,h0));
fprintf('Change in the gravitational potential energy during the drop: %0.3f J\n', DpotentialE)
 
potentialE01 = 0;
% Potential energy when dropped
potentialEh01 = PotentialE(m,g,h0) + potentialE01;
fprintf('[For O J at the waterline] When the pebble is dropped the gravitational potential energy is: %0.3f J\n', potentialEh01)
 
% Potential energy when it reaches the net
potentialEhf1 = PotentialE(m,g,hf) + potentialE01;
fprintf('[For O J at the waterline] When the pebble reaches the net the gravitational potential energy is: %0.3f J\n', potentialEhf1)
 
% When the potential energy is 30J
potentialE02 = 30;
% Potential energy when dropped
potentialEh02 = PotentialE(m,g,h0) + potentialE02;
fprintf('[For 30 J at the waterline] When the pebble is dropped the gravitational potential energy is: %0.3f J\n', potentialEh02)
 
% Potential energy when it reaches the net
potentialEhf2 = PotentialE(m,g,hf) + potentialE02;
fprintf('[For 30 J at the waterline] When the pebble reaches the net the gravitational potential energy is: %0.3f J\n', potentialEhf2)
%FUNCTION
function G =  PotentialE(m, g, h)
    G = m * g * h;
end