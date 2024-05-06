function [zDeep] = Deep_Depth(AD,WL)
% Scenario 1: Assuming that the SS only afect the deep waters and does not reach the shoreline. 
% Deep water depth = Actual depth (Depth at the deep waters) + WL

%AD = Actual depth
AD = 7,5

%WL = water level
WaterLevelDepth = load('E:\Lara Beach\Storm surges\Functions\Scenario 1\Deep water\WaterClimate.txt');
dates = WaterLevelDepth(:, 1);
waterLevels = WaterLevelDepth(:, 2);
WL = waterLevels
zDeep = AD + sum(WL, 2);

% Display total depth for each date
disp(['Total depth for each date:']);
disp(num2str([dates, zDeep]));

% Write total depth to a text file
writematrix([dates, zDeep], 'E:\Lara Beach\Storm surges\Functions\Scenario 1\Deep water\zDeep.txt');
end