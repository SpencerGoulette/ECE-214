clear variables; % clear all variables
freq = [100, 200, 400, 600, 800, 1000, 2000, 4000, 6000, 8000, 10000, 20000, 40000];

sim = [7.97, 15.6, 29.3, 40, 48.2, 54.5, 70.3, 79.8, 83.1, 84.7, 85.7, 87.6, 88.5];
legendname1 = 'Simulated Phase Shifts';

meas = [5.7, 15.3, 28.8, 39.1, 47.1, 53.3, 68.8, 79.2, 81.9, 82.9, 84.2, 85, 82.4];
legendname2 = 'Measured Phase Shifts';

%% Plot on a semilog-x scale
FigHandle = figure('Position', [150, 75, 850, 600]); % create 2nd figure and set size and location
semilogx(freq, sim, '-', 'markersize', 3, 'linewidth', 1.2, 'displayname', legendname1);
hold on; % hold on for multiple plots
semilogx(freq, meas, 'o', 'markersize', 3, 'linewidth', 1.2, 'displayname', legendname2);
grid on; % turn on grid
set(gca, 'fontsize', 16); % set font size
legend show % show legend
legend('Location', 'southeast');
xlabel('Frequency (Hz)'); % label x-axis
ylabel('Phase Shift (°)'); % label y-axis
title('Semilog plot of Measured and Simulated Phase Shifts as a function of Frequency'); % add title

%% End of .m file
