disp('initializing display parameters');

% open figures for sampled electric fields
for ind=1:number_of_sampled_electric_fields 
    if sampled_electric_fields(ind).display_plot == true
        sampled_electric_fields(ind).figure_number = figure;
        sampled_electric_fields(ind).plot_handle = plot(0,0,'b-');
        xlabel('time (ns)','fontsize',12);
        ylabel('(volt/meter)','fontsize',12);
        title(['sampled electric field [' ...
            num2str(ind) ']'],'fontsize',12);
        grid on;
        hold on;
    end
end

% open figures for sampled magnetic fields
for ind=1:number_of_sampled_magnetic_fields
    if sampled_magnetic_fields(ind).display_plot == true
        sampled_magnetic_fields(ind).figure_number = figure;
        sampled_magnetic_fields(ind).plot_handle = plot(0,0,'b-');
        xlabel('time (ns)','fontsize',12);
        ylabel('(ampere/meter)','fontsize',12);
        title(['sampled magnetic field [' num2str(ind) ']'], ...
            'fontsize',12);
        grid on;
        hold on;
    end
end

% initialize figures for sampled voltages
for ind=1:number_of_sampled_voltages  
    if sampled_voltages(ind).display_plot == true
        sampled_voltages(ind).figure_number = figure;
        sampled_voltages(ind).plot_handle = plot(0,0,'b-');
        xlabel('time (ns)','fontsize',12);
        ylabel('(volt)','fontsize',12);
        title(['sampled voltage [' num2str(ind) ']'], ...
            'fontsize',12);
        grid on;
        hold on;
    end
end

% initialize figures for sampled currents
for ind=1:number_of_sampled_currents  
    if sampled_currents(ind).display_plot == true
        sampled_currents(ind).figure_number = figure;
        sampled_currents(ind).plot_handle = plot(0,0,'b-');
        xlabel('time (ns)','fontsize',12);
        ylabel('(ampere)','fontsize',12);
        title(['sampled current [' num2str(ind) ']'], ...
            'fontsize',12);
        grid on;
        hold on;
    end
end

% initialize field animation parameters
initialize_animation_parameters;
