%% VAR-9 Gleb Sablin EDIfu25/2 10-18

% Mandatory 

clc; clear all; close all;

global x y

x = 0:0.2:2*pi;
calc_sincos

plot(x, y, 'r:s')
xlabel('x'); ylabel('sin(x) + cos(x)');
title('y = sin(x) + cos(x)');
grid on;


