disp('defining the problem geometry');

bricks  = [];
spheres = [];

% define a brick with material type 2
bricks(1).min_x = 0e-3;
bricks(1).min_y = 0e-3;
bricks(1).min_z = 0e-3;
bricks(1).max_x = +100e-3;
bricks(1).max_y = +100e-3;
bricks(1).max_z = +10e-3;
bricks(1).material_type = 1; 

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
