%% Matlab m-file Template for ECE 214 Lab #1 (Post-Lab Part A)
% In this example, we will plot the two functions:
%     exp^(-at)
% and 
%     exp^(-at) * cos(wt - 90 degrees)
% on both a linear and semi-logarithmic graph

%% Clear variables and define variables
clear variables; % clear all variables
Resistance = logspace(1, 6, 1001);  % create a logarithmic time vector 'Tlog' between 10u and 10m

%% Define functions
V1b = (0.5.*Resistance./Resistance); % first function 'V1' with a logarithmic time scale
legendname1 = 'Ideal Voltage'; % legend name for first function

V2b = ((20.3e9-14.8e9i).*Resistance)./(31000.*Resistance.*Resistance+Resistance.*(40.5e9-29.5e9i)+(1.01e12-738e9i)); % second function 'V2' with a logarithmic time scale
legendname2 = 'Real Voltage'; % legend name for second function

%% Plot on a semilog-x scale
FigHandle = figure('Position', [150, 75, 850, 600]); % create 2nd figure and set size and location
semilogx(Resistance, V1b, '-^', 'markersize', 3, 'linewidth', 1.2, 'displayname', legendname1);
hold on; % hold on for multiple plots
semilogx(Resistance, V2b, '-o', 'markersize', 3, 'linewidth', 1.2, 'displayname', legendname2);
semilogx(10, 0.143, '-o', 'markersize', 10, 'linewidth', 4, 'displayname', '10 Ohm Voltage');
semilogx(10000, 0.494, '-o', 'markersize', 10, 'linewidth', 4, 'displayname', '10k Ohm Voltage');
semilogx(1000000, 0.326, '-o', 'markersize', 10, 'linewidth', 4, 'displayname', '10M Ohm Voltage');
grid on; % turn on grid
set(gca, 'fontsize', 16); % set font size
legend show % show legend
xlabel('Resistance (R)'); % label x-axis
ylabel('Voltage (Ohms)'); % label y-axis
title('Semilog plot of V1 and V2 as a function of time'); % add title

%% End of .m file