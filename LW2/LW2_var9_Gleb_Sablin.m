%% VAR-9 Gleb Sablin EDIfu25/2 09-21
clc; clear

% Mandatory 

V = (-pi/2:0.5:3*pi)';
Vsq = V.^2;
Vsin = sin(Vsq + V);
disp(Vsin');

M = rand(3,3);
M(2,:) = [];
M = M';

A=6; f=4; o=1.2; U1=3.5; U2=2.5;
t = 0:0.001:1.5;
n = o * randn(size(t));
s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t); 
sn = s + n;


above = sn(sn>U1); % a)

sf = sn; % b)
sf(abs(sf)<U2) = 0;

signal_size = numel(sn); % c)
chosen_size = numel(above); % d)

sf_min = min(sf); % e)
sf_max = max(sf);

%% Complementary
clear 
clc
A = input("Vector A (12 elements) = ");
disp("generated vector B:")
mask1 = (1:numel(A)) <=9;
B = [A(10:end), A(mask1)];
disp(B)









