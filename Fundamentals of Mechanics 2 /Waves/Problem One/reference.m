%% symbolic variables and constants
min = 60; %s
nCrest = 6; 
Dt = 1 * min;
D_crest = 16; % m
 
lambda = D_crest;
f = nCrest / Dt;
T = 1 / f;
v = lambda / T;
fprintf('The wavelength (%0.2f m), frequency (%0.2f Hz), period (%0.2f s), and speed (%0.2f m/s) of the wave is as given.\n', lambda, f, T, v);