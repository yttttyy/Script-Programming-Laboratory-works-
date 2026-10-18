function calc_sincos
% CALC_SINCOS  Calculates sin(x) + cos(x) using global variables.
%   Reads global vector x and writes result to global vector y.

global x y
y = sin(x) + cos(x);
end