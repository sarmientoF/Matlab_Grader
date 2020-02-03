function [a, th0] = RampAceleration(g, th, uf, direction)
    % g is gravity
    % th is slope
    % uf is the coefficient of friction
    % direction is +1(up) or -1(down) 
    % a is aceleration in downward direction
    a = g * sin(th) + direction * uf * g * cos(th);
    % th0 is the angle for a = 0
    th0 = atan(uf);
end