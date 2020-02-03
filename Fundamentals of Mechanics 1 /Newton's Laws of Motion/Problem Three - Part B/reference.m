%% symbolic variables and constants
syms m g th
 
% Normal force for A and B
NA =  m * (g * cos(0));
NB =  m * (g * cos(th));
fprintf('The expression for the normal force NA is: %s \n',char(NA));
fprintf('The expression for the normal force NB is: %s \n',char(NB));
% Ratio 
n = NB / NA;
 
fprintf('The ratio of the normal force on block B to the normal force on block A is: %s \n',char(n));
 
% For th = 10
th = 10 * pi /180; 
g = 9.81;
NA2 =  m * (g * cos(0))
NB2 =  m * (g * cos(th))
if NA2/NB2 > 1
        fprintf('The normal force on block A is bigger than the normal force on block B. \n');
        check = 'A';
elseif NA2/NB2 < 1
        fprintf('The normal force on block B is bigger than the normal force on block A. \n');
        check = 'B';
elseif NA2/NB2 == 1
        fprintf('The normal force on is the same on both blocks. \n');
        check = '=';
else
        fprintf('Cannot determine. \n');
        check = 'x';
end