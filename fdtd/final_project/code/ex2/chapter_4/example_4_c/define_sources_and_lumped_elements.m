disp('defining sources and lumped element components');

voltage_sources = [];
current_sources = [];
diodes = [];
resistors = [];
inductors = [];
capacitors = [];

% define source waveform types and parameters
waveforms.sinusoidal(1).frequency = 1e9; 
waveforms.sinusoidal(2).frequency = 5e8; 
waveforms.unit_step(1).start_time_step = 50; 

% voltage sources 
% direction: 'xp', 'xn', 'yp', 'yn', 'zp', or 'zn'
% resistance : ohms, magitude   : volts
voltage_sources(1).min_x = 0;
voltage_sources(1).min_y = 0;
voltage_sources(1).min_z = 0;
voltage_sources(1).max_x = 0.0e-3;
voltage_sources(1).max_y = 1.0e-3;
voltage_sources(1).max_z = 1.0e-3;
voltage_sources(1).direction = 'zp';
voltage_sources(1).resistance = 50;
voltage_sources(1).magnitude = 1;
voltage_sources(1).waveform_type = 'unit_step';
voltage_sources(1).waveform_index = 1;
 
% capacitors
% direction: 'x', 'y', or 'z'
% capacitance : farads
capacitors(1).min_x = 1.0e-3;
capacitors(1).min_y = 0.0;
capacitors(1).min_z = 0.0;
capacitors(1).max_x = 1.0e-3;
capacitors(1).max_y = 1.0e-3;
capacitors(1).max_z = 1.0e-3;
capacitors(1).direction = 'z';
capacitors(1).capacitance = 10e-12;
