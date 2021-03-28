disp('defining output parameters');

sampled_electric_fields = [];
sampled_magnetic_fields = [];
sampled_voltages = [];
sampled_currents = [];

% figure refresh rate
plotting_step = 100;

% mode of operation
run_simulation = true;
show_material_mesh = true;
show_problem_space = true;

% define sampled voltages
sampled_voltages(1).min_x = -7.2e-3;
sampled_voltages(1).min_y = 0;
sampled_voltages(1).min_z = -5.0e-3;
sampled_voltages(1).max_x = +7.2e-3;
sampled_voltages(1).max_y = 2e-3;
sampled_voltages(1).max_z = 0;
sampled_voltages(1).direction = 'zp';
sampled_voltages(1).display_plot = true;


% display problem space parameters
problem_space_display.labels = true;
problem_space_display.axis_at_origin = false;
problem_space_display.axis_outside_domain = true;
problem_space_display.grid_xn = true;
problem_space_display.grid_xp = false;
problem_space_display.grid_yn = true;
problem_space_display.grid_yp = false;
problem_space_display.grid_zn = true;
problem_space_display.grid_zp = false;
problem_space_display.outer_boundaries = true;
problem_space_display.cpml_boundaries = true;

