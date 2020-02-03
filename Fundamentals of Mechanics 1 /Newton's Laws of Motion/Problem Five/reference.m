%% symbolic variables and constants
syms m g d positive 
syms th phi positive
assume(th<pi/2);
assume(phi<pi/2);
 
T1 = 2 * m * g / sin(th); % For a system of two bodies
 
T2 = m * g / sin(phi); % For the second wire
 
T3 = 2 * m * g / tan(th); % For the third wire
 
% T1/cos(phi) = T2/cos(th) From wire 2
 
r = T1/cos(phi)/(T2/cos(th));
r = simplify(r, 'steps', 30); % Trick to solve this equation 
 
phiSol = solve( r == 1, phi); % From wire 2
 
% Distance x
x = 2 * d *( cos(th) + cos(phiSol) ) + d;
 
% For th = 5.1 degrees
th5 = 5.1 * pi /180;
 
phi5 = subs( phiSol,th, th5) * 180 / pi ;
  
% Print solutions
 
fprintf('Tension 1 is: \n');
pretty(T1)
fprintf('Tension 2 is: \n');
pretty(T2)
fprintf('Tension 3 is: \n');
pretty(T3)
 
fprintf('The angle phi in terms of theta is: \n');
pretty(phiSol)
 
fprintf('The angle phi for theta = 5.1 is: %0.3f \n', phi5);
 
fprintf('The distance x is :\n');
pretty(x)