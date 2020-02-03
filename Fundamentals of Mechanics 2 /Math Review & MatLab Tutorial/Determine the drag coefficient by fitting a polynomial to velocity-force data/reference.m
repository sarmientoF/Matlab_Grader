dragData = readtable('VehicleDragData.csv','HeaderLines',3);
x = dragData.Velocity.^2;
coeffs = polyfit(x,dragData.Force,1)
gamma = coeffs(1);
vfit = (15:5:150)';
Ffit = gamma*vfit.^2;
plot(dragData.Velocity,dragData.Force,'rx'); hold on;
y1 = plot(vfit,Ffit,'b--','LineWidth',2); hold off;
legend({'Data','Fit'}); xlabel('Velocity (km/h)'); ylabel('Drag Force (N)');