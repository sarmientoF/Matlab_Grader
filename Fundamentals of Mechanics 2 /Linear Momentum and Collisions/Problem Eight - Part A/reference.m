%% symbolic variables and constants
mHe = 6.68e-27; % kg
mAu = 3.29e-25; % kg
E_He0 = 8e-13; % J
n = 1; % Elastic collision
th_Hef = 120; % Angle of He after collision
% Velocity of He and Au before collision 
v_He0 = sqrt(E_He0 * 2/ mHe)*[1, 0];
v_Au0 = [0, 0];
% Setup the variables for the collision line
syms th_Collision real
% Unit vector of collision line
Dr = [cosd(th_Collision), sind(th_Collision)];
% Find final velocities of He and Au after collision
[v_Hef, v_Auf] = Collision2Bodies(mHe,v_He0,mAu,v_Au0,n,Dr);
% find the th_collision from the v_Hef angle that we know  
% use vpasolve because solve function cannot do it
th_Collision = vpasolve(atan2d(v_Hef(2),v_Hef(1)) == th_Hef);
% th_collision from sym to real value
th_Collision = subs(th_Collision);
% Update the values of velocities 
v_Hef = subs(v_Hef,'th_Collision',th_Collision);
v_Auf = subs(v_Auf,'th_Collision',th_Collision);
% Speed of He after collision
speed_Hef = norm(v_Hef);
fprintf("The magnitude of the final velocity of the He nucleus is: %0.3E m/s\n", speed_Hef)
% Speed of Au after collision
speed_Auf = norm(v_Auf);
fprintf("The magnitude of the final velocity of the gold nucleus is: %0.3E m/s\n", speed_Auf)
% Direction of Au after collision
th_Auf = atan2d(v_Auf(2),v_Auf(1));
fprintf("The direction of the final velocity of the gold nucleus is: %0.2f degrees\n", th_Auf)
% Find Kinetic Energy after collision
E_Hef = 1/2 * mHe * dot(v_Hef,v_Hef);
fprintf("The final kinetic energy of the He nucleus is: %0.3E J\n",E_Hef)
%FUNCTION
function [vAf, vBf] = Collision2Bodies(mA,vA0,mB,vB0,n,Dr)
    %% symbolic variables and constants
    % mA: mass of A
    % mB: mass of B
    % vA0: Initial velocity of A
    % vB0: Initial velocity of B
    % rA0, rB0: centers of A and B
    % n: Restitution coefficient
    u_Dr = Dr/norm(Dr);
    vA0_Dr = dot(vA0, u_Dr);
    vA0_Dr = simplify(vA0_Dr);
    vB0_Dr = dot(vB0, u_Dr);
    vB0_Dr = simplify(vB0_Dr);
    syms vAf_Dr vBf_Dr
    % By using conservation of momentum
    Eq1 = vAf_Dr*mA + vBf_Dr*mB == vA0_Dr*mA + vB0_Dr*mB; 
    % By using the restitution coefficient
    Eq2 = n == (vAf_Dr - vBf_Dr) /(vB0_Dr - vA0_Dr);
    % Solving Eq1 and Eq2
    [vAf_Dr, vBf_Dr] = solve([Eq1, Eq2],[vAf_Dr, vBf_Dr]);
    % Calculating the new velocity
    vAf = (vA0 - u_Dr*vA0_Dr) + u_Dr*vAf_Dr;
    vBf = (vB0 - u_Dr*vB0_Dr) + u_Dr*vBf_Dr;
end