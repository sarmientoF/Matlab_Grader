%% symbolic variables and constants
syms t
 
r = [50*t, 4.9*t^2];
 
% Calculate r v a
range = [0 4*pi]; %[s] 
[r(t), v(t), a(t)] = PlotXVA2D(r, range); % need to turn r in function 
 
 
% Print results
 
fprintf('The equation for velocity is: \n');
pretty(v)
 
fprintf('The equation for acceleration is: \n');
pretty(a)
%FUNCTIONS
function [r, v, a] = PlotXVA2D(r,range)
    syms t
     
    v = diff(r,t);
    a = diff(v,t);
     
    figure()
     
    subplot(1,3,1);
    fplot(r(1),r(2), range,'Linewidth',2)
    title('Position')
    xlabel('x')
    ylabel('y')
    grid on
 
    subplot(1,3,2);
    fplot(v(1),v(2), range,'Linewidth',2)
    title('Velocity ')
    xlabel('vx')
    ylabel('vy')
    grid on
 
    subplot(1,3,3);
    fplot(a(1),a(2), range,'--or')
    title('Acceleration')
    xlabel('ax')
    ylabel('ay')
    grid on
     
end