disp('defining the problem geometry');

bricks  = [];
spheres = [];

% define a PEC plate
bricks(1).min_x = 0;
bricks(1).min_y = 0;
bricks(1).min_z = -2e-3;
bricks(1).max_x = 8e-3;
bricks(1).max_y = 2e-3;
bricks(1).max_z = -2e-3;
bricks(1).material_type = 2; 

% define a PEC plate 
bricks(2).min_x = 0;
bricks(2).min_y = 0;
bricks(2).min_z = 2e-3;
bricks(2).max_x = 8e-3;
bricks(2).max_y = 2e-3;
bricks(2).max_z = 2e-3;
bricks(2).material_type = 2; 