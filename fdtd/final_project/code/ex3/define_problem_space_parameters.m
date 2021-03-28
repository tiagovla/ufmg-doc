disp('defining the problem space parameters');

% maximum number of time steps to run FDTD simulation
number_of_time_steps = 5750; 

% A factor that determines duration of a time step
% wrt CFL limit
courant_factor = 0.9;

% A factor determining the accuracy limit of FDTD results
number_of_cells_per_wavelength = 20;    

% Dimensions of a unit cell in x, y, and z directions (meters)
dx=1.0e-3;    
dy=1.0e-3;   
dz=1.0e-3;

% ==<boundary conditions>========
% Here we define the boundary conditions parameters 
% 'pec' : perfect electric conductor
boundary.type_xp = 'pec';
boundary.air_buffer_number_of_cells_xp = 5;

boundary.type_xn = 'pec';
boundary.air_buffer_number_of_cells_xn = 5;

boundary.type_yp = 'pec';
boundary.air_buffer_number_of_cells_yp = 5;

boundary.type_yn = 'pec';
boundary.air_buffer_number_of_cells_yn = 5;

boundary.type_zp = 'pec';
boundary.air_buffer_number_of_cells_zp = 5;

boundary.type_zn = 'pec';
boundary.air_buffer_number_of_cells_zn = 5;

% ===<material types>============
% Here we define and initialize the arrays of material types
% eps_r   : relative permittivity
% mu_r    : relative permeability
% sigma_e : electric conductivity
% sigma_m : magnetic conductivity

% air
material_types(1).eps_r   = 1;
material_types(1).mu_r    = 1;
material_types(1).sigma_e = 0;
material_types(1).sigma_m = 0; 
material_types(1).color   = [1 1 1];

% PEC : perfect electric conductor
material_types(2).eps_r   = 1;
material_types(2).mu_r    = 1;
material_types(2).sigma_e = 1e10;
material_types(2).sigma_m = 0; 
material_types(2).color   = [1 0 0];

% PMC : perfect magnetic conductor
material_types(3).eps_r   = 1;
material_types(3).mu_r    = 1;
material_types(3).sigma_e = 0;
material_types(3).sigma_m = 1e10;
material_types(3).color   = [0 1 0];

% index of material types defining air, PEC, and PMC 
material_type_index_air = 1;
material_type_index_pec = 2;
material_type_index_pmc = 3;
