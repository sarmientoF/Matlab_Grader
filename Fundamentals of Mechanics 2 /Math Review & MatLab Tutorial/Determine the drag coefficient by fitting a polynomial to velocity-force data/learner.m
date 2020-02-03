dragData = readtable('VehicleDragData.csv','HeaderLines',3); % Read in the data
x = ; % Transformed data
coeffs = ; % Fitted linear and bias coefficents
gamma = ; % Effective drag coefficient
vfit = ; % Velocity values from 15 to 150
Ffit = ; % Estimated drag values
% Plotting code below:
plot(dragData.Velocity,dragData.Force,'rx'); hold on;
y1 = plot(vfit,Ffit,'b--','LineWidth',2); hold off;
legend({'Data','Fit'}); xlabel('Velocity (km/h)'); ylabel('Drag Force (N)');