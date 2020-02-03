%% symbolic variables and constants
syms p1 p0 L x positive
p = p0 + (p1 - p0) * (x/L)^2;
xCM = int(p*x,x,0,L)/int(p,x,0,L);
fprintf('The center of mass is: %s \n',char(xCM));