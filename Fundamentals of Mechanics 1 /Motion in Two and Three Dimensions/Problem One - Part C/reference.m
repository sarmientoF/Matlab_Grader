%% symbolic variables and constants
syms t
 
r = [cos(t), sin(t), t];
 
% Calculate r v a
range = [0 4*pi]; %[s] 
[r(t), v(t), a(t)] = PlotXVA3D(r, range); % need to turn r in function 
 
% Print results
 
fprintf('The equation for velocity is: \n');
pretty(v)
 
fprintf('The equation for acceleration is: \n');
pretty(a)
%FUNCTION
function [r, v, a] = PlotXVA3D(r,range)
    syms t
     
    v = diff(r,t);
    a = diff(v,t);
    r = r;
       
    figure()
     
    subplot(1,3,1);
    fplot3(r(1),r(2),r(3), range)
    title('Position')
    xlabel('x')
    ylabel('y')
    zlabel('z')
    grid on
 
    subplot(1,3,2);
    fplot3(v(1),v(2),v(3), range)
    title('Velocity')
    xlabel('vx')
    ylabel('vy')
    zlabel('vz')    
    grid on
 
    subplot(1,3,3);
    fplot3(a(1),a(2),a(3), range)
    title('Acceleration')
    xlabel('ax')
    ylabel('ay')
    zlabel('az')    
    grid on
     
end