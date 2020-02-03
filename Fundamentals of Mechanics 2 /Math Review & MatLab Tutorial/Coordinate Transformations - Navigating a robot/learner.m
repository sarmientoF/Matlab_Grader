pRobotWorld = randi([-5 5], [2 1]) % Position of robot in the world frame in range [-5 5]
theta = 2*pi*rand                  % Rotation of robot in radians
pObjectWorld = randi([-5 5], [2 1])   % Position of object in the world frame in range [-5 5]
% Calculate T and pObjectRobot