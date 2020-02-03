function PO = PowerOut(P, Q, v, h, rho, g) 
    PO = (P + 1/2 * rho * v^2 + rho * g * h) * Q;
    fprintf('Total power output of the left ventricle: %0.2f W\n',PO);
end