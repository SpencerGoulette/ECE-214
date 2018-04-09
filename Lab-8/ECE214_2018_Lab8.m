%% Matlab m-file Template for ECE 214 Lab #2

addpath('D:\CppSim\CppSimShared\HspiceToolbox'); % add ngspice matlab toolbox to the path
clear variables;
hspc_filename = 'ECE214_2018_Lab8.hspc';

%% Define variables and specify NGspice control statement
ngsim(hspc_filename); % run NGspice
%% Load simulation results and extract time, Va, and Vb
data = loadsig('simrun.raw');
time = evalsig(data, 'TIME');
Vout = evalsig(data,'vout');
Vctr1 = evalsig(data,'vc1');
Vctr2 = evalsig(data,'vc2');

%% Plot Va and Vb as a function of time
Fig1 = figure('Position', [200, 75, 850, 600]); % set figure size and location
plot(time*1000, Vout, 'linewidth', 2.0)
grid on; % add grid
set(gca, 'fontsize', 16); % increase font size
xlabel('Time (ms)', 'fontsize', 16);
ylabel('Voltage (V)', 'fontsize', 16);
title('Voltage vs. Time');
legend('Astable Multivibrator');

Fig2 = figure('Position', [200, 75, 850, 600]); % set figure size and location
plot(time*1000, Vctr1, time*1000, Vctr2, 'linewidth', 2.0)
grid on; % add grid
set(gca, 'fontsize', 16); % increase font size
xlabel('Time (ms)', 'fontsize', 16);
ylabel('Voltage (V)', 'fontsize', 16);
title('Voltage vs. Time');
legend('vctr1', 'vctr2');

%% end of M file