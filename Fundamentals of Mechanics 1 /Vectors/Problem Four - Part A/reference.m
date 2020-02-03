%% symbolic variables and constants
syms x y
 
R = 10;
th = pi/4;
phi = pi/3;
G = R * [cos(th)*sin(phi) sin(th)*sin(phi) cos(phi)];
 
R = 15;
th = 7*pi/6;
phi = -pi/4;
H = R * [cos(th)*sin(phi) sin(th)*sin(phi) cos(phi)];
Cr_GH = cross(G,H);
Norm_GH = norm(Cr_GH);
Dot_GH = dot(G,H);
fprintf('The cross product of G and H is: [%f, %f, %f] \n', cross(G,H));
fprintf('The norm of the cross product of G and H is: %f \n', norm(cross(G,H)) );
fprintf('The dot product of G and H is: %f \n', dot(G,H));