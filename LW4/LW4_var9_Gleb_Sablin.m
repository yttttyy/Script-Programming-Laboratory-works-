%% VAR-9 Gleb Sablin EDIfu25/2 10-04

clc; clear; close all;

% Mandatory 

x = (2*rand(1,200) - 1) .* sqrt(pi/2);
y = (2*rand(1,200) - 1) .* sqrt(pi/2);

x = sort(x);
y = sort(y);
[X, Y] = meshgrid(x, y);
Z = sin(X.^2 + Y.^2);

figure;
surf(X, Y, Z);
colormap("winter");           
shading interp;              
view(15, 15);
xlabel('x'); ylabel('y'); zlabel('f(x,y)');
title('f(x,y) = sin(x^2 + y^2)');



x = -1:0.05:1;
y = -1:0.05:1;
[X, Y] = meshgrid(x, y);
R = sqrt(X.^2 + Y.^2);
Z = exp(R.^2);

figure;
surf(X, Y, Z);
colormap(autumn);
shading interp;             
view(20, 20);
xlabel('x'); ylabel('y'); zlabel('z(r)');
title('z(r) = e^{r^2},  r = \surd(x^2 + y^2)');


%% Complementary

clear; clc; close all;

x = -1:0.05:1;
y = -1:0.05:1;
[X, Y] = meshgrid(x, y);
Z = 1 - (X.^2 + Y.^2);

figure;

ax1 = subplot(2,2,1);
surf(X, Y, Z); shading interp;
colormap(ax1, sky);
title('colormap: sky');
xlabel('x'); ylabel('y'); zlabel('z'); grid on;

ax2 = subplot(2,2,2);
surf(X, Y, Z); shading interp;
colormap(ax2, "flag");
title('colormap: flag');
xlabel('x'); ylabel('y'); zlabel('z'); grid on;

ax3 = subplot(2,2,3);
surf(X, Y, Z); shading interp;
colormap(ax3, [0.5 0 0.8; 0.8 0.3 0.8; 0.8 0.5 1]);
title('0.5 0 0.8; 0.8 0.3 0.8; 0.8 0.5 1]');
xlabel('x'); ylabel('y'); zlabel('z'); grid on;

ax4 = subplot(2,2,4);
surf(X, Y, Z); shading ("interp");
colormap(ax4, [1 0 0; 0 1 0; 0 0 1]);
title('[1 0 0; 0 1 0; 0 0 1]');
xlabel('x'); ylabel('y'); zlabel('z'); grid on;