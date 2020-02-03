%% symbolic variables and constants
syms th D F m g positive
syms FW FN1 FN2 positive
syms Fr1 Fr2 positive
 
FF = [F*[cos(th) sin(th)]; FW*[0 -1]; FN1*[0 1]; FN2*[0 1]; Fr1*[-1 0]; Fr2*[-1 0]];
DD = D * [1 0]; 
W = [];
for i = 1:length(FF)
    W =  [W; dot(FF(i,:),DD)];
end
fprintf('The work done by each force is: \n')
pretty(FF)
pretty(W)