function V = plotSum(A,B)
    % A and B are vectors in 2D
    
    V = A + B; % Resultant vector
     
    figure()
    hold on
     
    quiver(0,0,A(1),A(2),0) % Plot A from the origin
    quiver(A(1),A(2),B(1),B(2),0) % Plot B from A
    quiver(0,0,V(1),V(2),0) % Plot the resultant from the origin
     
    grid
    text(A(1),A(2), sprintf('V1'), 'Rotation', atan2d(A(2),A(1)))
    text(V(1),V(2), sprintf('V2'), 'Rotation', atan2d(B(2),B(1)))
    text(V(1)/2,V(2)/2, sprintf('V1 + V2'), 'Rotation', atan2d(V(2),V(1)))
     
    fprintf('The magnitude of the vector is: %0.4f \n',norm(V)); % Print the magnitude
    fprintf('The angle the vector makes with the horizontal is: %0.4f°\n',atan2d(V(2),V(1))); % Print the angle
end