%% Gleb Sablin EDIfu25/2 09-11

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Two functions')
xlabel('X')
ylabel('F_1 [-o-]   |   F_2 [-x-]')
