function [zBreakwater] = Breakwater_Depth(AD)
%Scenario 1: Assuming that the SS only afect the deep waters and does not reach the shoreline. 
% Breakwater Depth = Actual depth (Depth at the structure) 
%AD = Actual depth at the structure
AD = 5;
% Read date values from the wave climate text file 
WaveClimate = load('E:\Lara Beach\Storm surges\Functions\Scenario 1\At the breakwater\WaveClimate.txt');
% Extract only the dates
dates = WaveClimate(:, 1);

%Assign actual depth at the breakwater 
zBreakwater = AD * ones(size(dates));

%Display total depth for each date
disp(['Total depth for each date:']);
disp(num2str([dates, zBreakwater]));

% Write total depth to a text file
writematrix([dates, zBreakwater], 'E:\Lara Beach\Storm surges\Functions\Scenario 1\At the breakwater\zBreakwater.txt');

end