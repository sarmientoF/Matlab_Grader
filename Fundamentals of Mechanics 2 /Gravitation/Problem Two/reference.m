function v = EscapeVelocity(M,R)
    G = 6.67408E-11;
    v = sqrt(2 * G * M / R);
    fprintf('The escape speed is: %0.3f m/s\n',v);
end