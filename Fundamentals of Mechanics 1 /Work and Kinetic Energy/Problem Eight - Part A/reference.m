%% symbolic variables and constants
% Power by person
P_person = 100; % W
% Power of dryer
P_4K = 4000; % W
% Number of people 
n_people_4K = P_4K/ P_person;
fprintf('The number of people needed is: %i persons \n',n_people_4K)
% Power of electric plant
P_plant = 800E6; % [W]
n_people_800M = P_plant/ P_person;
fprintf('The number of people needed is: %i persons \n',n_people_800M)