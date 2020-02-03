%% symbolic variables and constants
A = sym('A', [1 3],'real');
B = sym('B', [1 3],'real');
C = A + B;
 
costh = dot(A,B) / (norm(A)*norm(B));
 
LHS = simplify(norm(C)^2);
LHS
RHS = simplify(norm(A)^2 +norm(B)^2 + 2 * norm(A) * norm(B) * costh);
RHS
fprintf('LHS - RHS: %0.0f \n',vpa(simplify(LHS - RHS)));
CheckEqual = simplify(LHS - RHS) == 0;