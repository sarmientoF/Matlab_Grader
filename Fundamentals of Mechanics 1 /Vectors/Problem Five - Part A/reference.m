%% symbolic variables and constants
syms x y real
syms xx yy real
syms th real
 
% Part 1 
x_dash =  x * cos(th) + y * sin(th);
y_dash = -x * sin(th) + y * cos(th);
 
% Part 2 
V = [x y];
VV = [x_dash y_dash];
 
PO_normal = simplify(norm(V))
PO_rotated = simplify(norm(VV))