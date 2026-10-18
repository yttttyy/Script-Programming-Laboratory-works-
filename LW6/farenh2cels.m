function C = farenh2cels(F)
% FARENH2CELS  Converts temperature from Fahrenheit to Celsius.
%
%   C = farenh2cels(F) returns temperature in Celsius degrees,
%   when temperature F in Fahrenheit degrees is given.
%   Formula: C = 5*(F - 32)/9
%
%   Input:  F - temperature in Fahrenheit (number, vector or matrix)
%   Output: C - temperature in Celsius (same size as F)
%
%   Example:
%       C = farenh2cels(212)          % returns 100
%       C = farenh2cels([32 98.6])    % returns [0 37]

C = 5*(F - 32)/9;
end