% Matlab m-file for ECE 214 Lab #3

addpath('D:\CppSim\CppSimShared\HspiceToolbox');
clear variables;
hspc_filename = 'ECE214_2018_Lab5.hspc';

%% Define variables, specify NGspice control statement, and run NGspice
hspc_addline('.tran 10u 125m 25m', hspc_filename);
ngsim(hspc_filename); % run NGspice

%% load simulation results and extract time, Vout, and Vin
data = loadsig('simrun.raw');
time = evalsig(data, 'TIME');
Vout1 = evalsig(data, 'vout1');
Vout2 = evalsig(data, 'vout2');

%%% plot Vin and Vout as a function of time
fs = 16; % define font size
lw = 1.5; % define linewidth
Fig1 = figure('Position', [200, 75, 850, 600]); % figure size and location

subplot(2,1,1); % first subplot
plot(time.*1000,  Vout1, 'linewidth',lw);
grid on; % add grid
set(gca, 'fontsize', fs); % set font size
ylabel('Voltage (V)', 'fontsize', fs); % label y-axis
title('ECE 214: Lab 5 - Oscillator (time domain)'); % title
legend('Oscillator Output 1'); % add legend
axis([30 31 -10 10]); % set axis limits

subplot(2,1,2); % second subplot
plot(time.*1000, Vout2, 'linewidth',lw);
grid on; % add grid
set(gca, 'fontsize', fs); % set font size
xlabel('Time (ms)', 'fontsize', fs); % label x-axis
ylabel('Voltage (V)', 'fontsize', fs); % label y-axis
legend('Oscillator Output 2'); % add legend
axis([30 31 -10 10]); %set axis limits

%% end of M file