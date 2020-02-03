%% symbolic variables and constants
DmDt = 10; % kg/s
v = 2; %m/s
% F = Dp/Dt = DpDt
% F = d((m0 + m_grains) * v)/dt = d(m0*v)/dt + d(m_grains*v)/dt
% F = 0 + v * d(m_grains)/dt = v * DmDt
F = v * DmDt;
P = F * v; 
fprintf('The force that is needed to keep the conveyor belt at a constant velocity is: %0.3f N \n', F)
fprintf('The minimun power of the motor is: %0.3f W \n', P)