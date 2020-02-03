pRobotWorld = randi([-5 5], [2 1]) % Position of robot in the world frame in range [-5 5]
theta = 2*pi*rand                  % Rotation of robot in radians
pObjectWorld = randi([-5 5], [2 1])   % Position of object in the world frame in range [-5 5]
% Calculate T
T = [cos(theta), -sin(theta), pRobotWorld(1); sin(theta), cos(theta), pRobotWorld(2); 0, 0, 1];
% Use the inverse of T (or backslash operator to find the homogenous 
% position in the robow frame. Make sure to add a 1 to destWorld
pObjectRobot = inv(T)*[pObjectWorld; 1];
% Now take only the first two elements of pr since we are in 2-D
pObjectRobot = pObjectRobot(1:2);