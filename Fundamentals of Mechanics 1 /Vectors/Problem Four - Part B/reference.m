%% symbolic variables and constants
A = sym('A', [1 3],'real');
B = sym('B', [1 3],'real');
C = sym('C', [1 3],'real');
int_var = dot(A,cross(B,C));
 
Area_BC = norm(cross(B,C));
V_BC = cross(B,C);
H = dot(A, V_BC) / norm(V_BC);
Vol = Area_BC * H;
CheckEqual = isequal(int_var, Vol);
fprintf('The volume due to the vector formula is: %s \n',char(int_var));
fprintf('The volume due to the standard formula is: %s \n',char(Vol));