%% symbolic variables and constants  
syms m t F 
a = F/m;
v0 = t * a; 
D1 = v0 * t  - a*t^2 /2;   
t2 = (0 - (-v0)) / a;
D2 = a * t2^2 / 2; 
D = D1 + D2;
fprintf('The total distance the body travels is : %s \n',char(D));