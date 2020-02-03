%% symbolic variables and constants
syms U0 R0 r Dr positive
U(r) = U0 * ((R0/r)^12 - 2*(R0/r)^6); 
Answer = -diff(U,r)