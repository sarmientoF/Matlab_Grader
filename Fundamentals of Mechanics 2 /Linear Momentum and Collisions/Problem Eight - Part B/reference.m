%% symbolic variables and constants
syms m vA0 positive
mA = m;
mB = m;
vB0 = 0;
vAf = 0;
vBf = vA0;
% Momentum Initial
P0 = mA * vA0 + mB * vB0;
% Momentum Final
Pf = mA * vAf + mB * vBf;
fprintf("The initial and the final momentums are: \n");
pretty(P0 == Pf)
% Kinetic Energy Initial
K0 = (mA* vA0^2/2) + (mB* vB0^2/2);
% Kinetic Energy Final
Kf = (mA* vAf^2/2) + (mB* vBf^2/2);
Kf = simplify(Kf);
fprintf("The initial and the final kinetic energies are: \n");
pretty(K0 == Kf)