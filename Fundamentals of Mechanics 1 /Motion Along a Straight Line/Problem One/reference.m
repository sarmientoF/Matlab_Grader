%% symbolic variables and constants
Dx = 23500; % m
Dt = 150; % s
vSound = 343; % m/s
ave_vel = Dx / Dt;
vel_ratio = ave_vel/vSound * 100; % [%]
 
fprintf('The average velocity is: %0.1f m/s \n', ave_vel);
fprintf('The ratio of velocities is: %0.1f %%  \n', vel_ratio);