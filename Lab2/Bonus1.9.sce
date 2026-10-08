clc;
clear;

Fs = 600;
n = 0:29;

x = sin(480*%pi*n/Fs) + 3*sin(720*%pi*n/Fs);
y = -2*sin(0.8*%pi*n);

scf(0); clf();

subplot(2,1,1);
plot2d3(n, x); xgrid();
title("Tin hieu x(n) tu x_a(t) voi Fs = 600 Hz");
xlabel("n"); ylabel("Bien do");

subplot(2,1,2);
plot2d3(n, y); xgrid();
title("Tin hieu y(n) = -2*sin(0.8*pi*n) sau khi Aliasing");
xlabel("n"); ylabel("Bien do");
