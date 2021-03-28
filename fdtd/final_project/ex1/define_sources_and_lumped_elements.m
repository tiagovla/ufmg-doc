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
voltage_sources(1).min_x = 30e-3;
voltage_sources(1).min_y = 30e-3;
voltage_sources(1).min_z = 4e-3;
voltage_sources(1).max_x = 35e-3;
voltage_sources(1).max_y = 35e-3;
voltage_sources(1).max_z = 6e-3;
voltage_sources(1).direction = 'yp';
voltage_sources(1).resistance = 50;
voltage_sources(1).magnitude = 1;
voltage_sources(1).waveform_type = 'sinusoidal';
voltage_sources(1).waveform_index = 1;
