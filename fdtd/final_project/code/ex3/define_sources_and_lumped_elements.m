disp('defining sources and lumped element components');

voltage_sources = [];
current_sources = [];
diodes = [];
resistors = [];
inductors = [];
capacitors = [];

% define source waveform types and parameters
waveforms.sinusoidal(1).frequency = 1e9; 
waveforms.sinusoidal(2).frequency = 1e9; 
waveforms.unit_step(1).start_time_step = 50; 

% voltage sources 
% direction: 'xp', 'xn', 'yp', 'yn', 'zp', or 'zn'
% resistance : ohms, magitude   : volts
voltage_sources(1).min_x = 0;
voltage_sources(1).min_y = 0;
voltage_sources(1).min_z = -2.0e-3;
voltage_sources(1).max_x = 0;
voltage_sources(1).max_y = 2.0e-3;
voltage_sources(1).max_z = 2.0e-3;
voltage_sources(1).direction = 'zp';
voltage_sources(1).resistance = 5;
voltage_sources(1).magnitude = 2;
voltage_sources(1).waveform_type = 'sinusoidal';
voltage_sources(1).waveform_index = 2;

% resistors
% direction: 'x', 'y', or 'z'
% resistance : ohms
diodes(1).min_x = 8.0e-3;
diodes(1).min_y = 1e-3;
diodes(1).min_z = -2.0e-3;
diodes(1).max_x = 8.0e-3;
diodes(1).max_y = 1.0e-3;
diodes(1).max_z = 0.0e-3;
diodes(1).direction = 'zp';

capacitors(1).min_x = 8.0e-3;
capacitors(1).min_y = 1.0e-3;
capacitors(1).min_z = 0;
capacitors(1).max_x = 8.0e-3;
capacitors(1).max_y = 1.0e-3;
capacitors(1).max_z = 2.0e-3;
capacitors(1).direction = 'z';
capacitors(1).capacitance = 50e-12;
