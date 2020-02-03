%% symbolic variables and constants
syms p0 a b x y positive 
p = p0*x;
xCM = int(p*x,x,0,a)/int(p,x,0,a);
yCM = int(p*y,y,0,b)/int(p,y,0,b);
fprintf('The location of the center of mass in the x direction is: %s \n',char(xCM))
fprintf('The location of the center of mass in the y direction is: %s \n',char(yCM))