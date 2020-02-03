function [vAf, vBf] = Collision2Spheres(mA,vA0,rA0,mB,vB0,rB0,n)
%% symbolic variables and constants
    % mA: mass of A
    % mB: mass of B
    % vA0: Initial velocity of A
    % vB0: Initial velocity of B
    % rA0, rB0: centers of A and B
    % n: Restitution coefficient
    
    Dr = rA0 - rB0;
    
    if Dr == [0, 0]
        u_Dr = Dr;
    else
        u_Dr = Dr/norm(Dr);
    end
 
    vA0_Dr = dot(vA0, u_Dr);
    vB0_Dr = dot(vB0, u_Dr);
 
    syms vAf_Dr vBf_Dr
    
    % By using conservation of momentum
    Eq1 = vA0_Dr*mA + vB0_Dr*mB == vAf_Dr*mA + vBf_Dr*mB;
    
    % By using the restitution coefficient
    Eq2 = n*(vA0_Dr - vB0_Dr) == -(vAf_Dr - vBf_Dr);
    
    %Solving Eq1 and Eq2
    [vAf_Dr, vBf_Dr] = solve([Eq1, Eq2],[vAf_Dr, vBf_Dr]);
 
    % Calculating the new velocity
    vAf = (vA0 - u_Dr.*vA0_Dr) + u_Dr.*vAf_Dr;
    vAf = simplify(vAf);
    fprintf('The final velocity of the first ball is: [%s, %s] m/s\n',vAf);
 
    vBf = (vB0 - u_Dr.*vB0_Dr) + u_Dr.*vBf_Dr;
    vBf = simplify(vBf);
    fprintf('The final velocity of the second ball is: [%s, %s] m/s\n',vBf);
end