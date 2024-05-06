function [zShallow] = Shallow_Depth(AD)
% Scenario 1: Assuming that the SS only affect deep waters and does not
% reach the shoreline 

% Behind the Breakwater:Actual Depth (Depth = Average value of profile depth)

%Actual depth: 
AD = 2.5;

% Read date values from the wave climate text file 
WaveClimate = load('E:\Lara Beach\Storm surges\Functions\Scenario 1\Behind the breakwater\WaveClimate.txt');

% Extract only the dates
dates = WaveClimate(:, 1);

%Assign actual depth at the breakwater 
zShallow = AD * ones(size(dates));

%Display total depth for each date
disp(['Total depth for each date:']);
disp(num2str([dates, zShallow]));

% Write total depth to a text file
writematrix([dates, zShallow], 'E:\Lara Beach\Storm surges\Functions\Scenario 1\Behind the breakwater\zShallow.txt');

end