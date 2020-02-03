%% symbolic variables and constants
syms d1 v1 d2 v2
 
A1 = pi * d1^2;
A2 = pi * d2^2;
 
Q1 = A1 * v1;
Q2 = A2 * v2;
% If the fluid is incompressible, the flow rate is the same
syms v2
v2 = solve(Q1 == Q2, v2);
v2check=simplify(v2-v1*(d1/d2)^2);
syms v2
v1 = solve(Q2 == Q1, v1);
v1check=simplify(v2-v1*(d1/d2)^2);
% Compare two values
compare=isequaln(v2check,v1check);
if compare==1
    disp('True')
else
    disp('False')
end