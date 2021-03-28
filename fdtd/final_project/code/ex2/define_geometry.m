disp('defining the problem geometry');

bricks  = [];
spheres = [];

% define a brick with material type 2
bricks(1).min_x = -7.2e-3;
bricks(1).min_y = -49e-3;
bricks(1).min_z = 0;
bricks(1).max_x = +7.2e-3;
bricks(1).max_y = +49e-3;
bricks(1).max_z = 0;
bricks(1).material_type = 2; 

%define a brick with material type 2 
bricks(2).min_x = -7.2e-3;
bricks(2).min_y = -50e-3;
bricks(2).min_z = -5.0e-3;
bricks(2).max_x = +7.2e-3;
bricks(2).max_y = -50e-3;
bricks(2).max_z = +5.0e-3;
bricks(2).material_type = 2; 

%define a brick with material type 2 
bricks(3).min_x = -7.2e-3;
bricks(3).min_y = +50e-3;
bricks(3).min_z = -5.0e-3;
bricks(3).max_x = +7.2e-3;
bricks(3).max_y = +50e-3;
bricks(3).max_z = +5.0e-3;
bricks(3).material_type = 2; 
% 
% % define a sphere with material type 5 
% spheres(1).radius   = 20e-3;
% spheres(1).center_x = 0;
% spheres(1).center_y = 0;
% spheres(1).center_z = 40e-3;
% spheres(1).material_type = 5; 
% 
% % define a sphere with material type 1 
% spheres(2).radius   = 15e-3;
% spheres(2).center_x = 0;
% spheres(2).center_y = 0;
% spheres(2).center_z = 40e-3;
% spheres(2).material_type = 1; 
