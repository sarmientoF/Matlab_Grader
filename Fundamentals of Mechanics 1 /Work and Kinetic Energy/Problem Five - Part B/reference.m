%% symbolic variables and constants
syms m g F 
syms N f TotF
th = 30;
uK = 0.40;
m = 40; % kg
g = 9.81; % m/s^2
D = 8; % m
direction = +1;
% Vector that contains all the forces 
VectorF = [F*[1 0]; m*g*[0 -1]; N*[-sind(th) cosd(th)]; f*[-cosd(th) -sind(th)]*direction];
% The body moves at constant v -> a = 0
a = [0, 0];
% Solve the equations F = m*a and f = N * uK
[F, N, f] = solve([sum(VectorF), f] == [m*a, N * uK],[F N f]);
% Updating the vector to find the net Force 
VectorF = [F*[1 0]; m*g*[0 -1]; N*[-sind(th) cosd(th)]; f*[-cosd(th) -sind(th)]*direction];
TotF = sum(VectorF);
% New Vector that contains the foces that we wanna calculate the work done
% from 
VectorF = [F*[1 0];f*[-cosd(th) -sind(th)]; m*g*[0 -1];TotF];
DD = D * [cosd(th) sind(th)];
W = [];
for i = 1:length(VectorF)
    W =  [W; dot(VectorF(i,:),DD)];
end 
eval_W = vpa(subs(W));
fprintf('The work done in Joules by each force is: \n')
pretty(eval_W)
 
%% When the block goes down 
%% symbolic variables and constants
%syms m g F 
%syms N f TotF
%th = 30;
%uK = 0.40;
%m = 40;
%g = 9.81;
%D = 8;
%direction = -1; 
% Vector that contains all the forces 
%VectorF = [F*[1 0]; m*g*[0 -1]; N*[-sind(th) cosd(th)]; f*[-cosd(th) -sind(th)]*direction]; 
%a = [0, 0];
%[F, N, f] = solve([sum(VectorF), f] == [m*a, N * uK],[F N f]);
%VectorF = [F*[1 0]; m*g*[0 -1]; N*[-sind(th) cosd(th)]; f*[-cosd(th) -sind(th)]*direction];
%TotF = sum(VectorF);
% New Vector that contains the foces that we wanna calculate the work done
% from
%VectorF = [F*[1 0];f*[-cosd(th) -sind(th)]; m*g*[0 -1];TotF];
%DD = D * [cosd(th) sind(th)];
%W2 = [];
%for i = 1:length(VectorF)
%    W2 =  [W2; dot(VectorF(i,:),DD)];
%end
%fprintf('The work done by each Force is: \n')
%eval_W2 = subs(W2)