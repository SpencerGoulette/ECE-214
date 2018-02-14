clear variables; % clear all variables
freq = [100, 200, 400, 600, 800, 1000, 2000, 4000, 6000, 8000, 10000, 20000, 40000];

sim = [3.41, 3.32, 3.01, 2.64, 2.30, 2.01, 1.16, 0.61, 0.41, 0.31, 0.25, 0.124, 0.062];
legendname1 = 'Simulated Peak Voltages';

meas = [3.42, 3.26, 2.98, 2.61, 2.27, 1.98, 1.14, 0.56, 0.41, 0.31, 0.25, 0.13, 0.066];
legendname2 = 'Measured Peak Voltages';

%% Plot on a semilog-x scale
FigHandle = figure('Position', [150, 75, 850, 600]); % create 2nd figure and set size and location
semilogx(freq, sim, '-', 'markersize', 3, 'linewidth', 1.2, 'displayname', legendname1);
hold on; % hold on for multiple plots
semilogx(freq, meas, 'o', 'markersize', 3, 'linewidth', 1.2, 'displayname', legendname2);
grid on; % turn on grid
set(gca, 'fontsize', 16); % set font size
legend show % show legend
xlabel('Frequency (Hz)'); % label x-axis
ylabel('Voltage (V)'); % label y-axis
title('Semilog plot of Measured and Simulated Peak Voltages as a function of Frequency'); % add title

%% End of .m file