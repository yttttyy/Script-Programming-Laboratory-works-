%% VAR-9 Gleb Sablin EDIfu25/2 09-21
clc; clear; close all;

% Mandatory 
x = linspace(0, 4, 81);
f1 = x;
f2 = x.^2;
f3 = x.^3;
figure; hold on; grid on;
plot(x, f1, x, f2, x, f3);
xlabel("x");
ylabel("f1(x) = x; f2(x) = x2; f3(x) = x3");
title("Graphs of the fhe functions xn")
hold off;

x_3d = (0:pi/100:10*pi);
y_3d = sin(x_3d).*cos(x_3d);
z_3d = cos(x_3d);
figure; hold on;
subplot(1, 2, 1);
plot3(x_3d, y_3d, z_3d);
xlabel('x');
ylabel('y(x) = sin(x)cos(x)');
zlabel('z(x) = cos(x)');
xlim([0 10*pi]);
ylim([-1 1]);
zlim([-1 1]);
title('a) 3D plot of y(x) and z(x)');
subplot(1, 2, 2);
polarplot(x_3d, y_3d);
rlim([0 0.5]);
title('b) Polar plot of y(x) = sin(x)cos(x)');


%% Complementary

clc; clear; close all;


A=6; f=4; o=1.2; U1=3.5; U2=2.5;
t = 0:0.001:1.5;
n = o * randn(size(t));
s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
sn = s + n;
above = sn(sn>U1);
sf = sn;
sf(abs(sf)<U2) = 0;

purpleColor = [0.5 0 0.5];   
mask_above = sn > U1;
t_above = t(mask_above);      

sn_max = max(sn);
sn_min = min(sn);
idx_max = find(sn == sn_max);   
idx_min = find(sn == sn_min);  

figure;

subplot(1, 2, 1);
plot(t, sn, '--', 'LineWidth', 1.5); hold on;
plot(t, sf, ':',  'LineWidth', 1.5);
yline(U1, 'Color', purpleColor, 'LineStyle', '-',  'LineWidth', 2);
yline(U2, 'Color', 'w',         'LineStyle', '-', 'LineWidth', 2);
hold off;
grid on;
xlim([t(1) t(end)]);
ylim([min([sn, sf, -U1, -U2]) - 1, max([sn, sf, U1, U2]) + 1]);
xlabel('Time, s');
ylabel('Voltage, V');
title('Original and Filtered Signal with Thresholds', ...
      'Color', purpleColor, 'FontSize', 16);
legend('Original signal s_n', 'Filtered signal s_f', ...
       'Threshold U_1', 'Threshold U_2', 'Location', 'best');


subplot(1, 2, 2);
stem(t_above, above, 'LineWidth', 1.5); hold on;
plot(t(idx_max), sn(idx_max), 'c*', 'MarkerSize', 8, 'LineWidth', 1.5);
plot(t(idx_min), sn(idx_min), 'mo', 'MarkerSize', 8, ...
     'MarkerFaceColor', 'm', 'LineWidth', 1.5);
hold off; grid on;
xlim([t(1) t(end)]);
ylim([sn_min - 1, sn_max + 1]);
xlabel('Time, s');
ylabel('Voltage, V');
title('Signal Values Above U_1 with Max/Min Markers', ...
      'Color', purpleColor, 'FontSize', 16);
legend('Values > U_1', 'Maximum voltage', 'Minimum voltage', ...
       'Location', 'best');