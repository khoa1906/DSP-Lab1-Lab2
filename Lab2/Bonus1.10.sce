clc;
clear;

bitrate = 10000;
L = 1024;
b = log2(L);
Fs = bitrate / b;
n = 0:49;

x = 3*cos(600*%pi*n/Fs) + 2*cos(1800*%pi*n/Fs);

xmin = -5; xmax = 5;
delta = (xmax - xmin) / (L - 1);
xq = round((x - xmin) / delta) * delta + xmin;

scf(0); clf();

subplot(2,1,1);
plot2d3(n, x); xgrid();
title("Tin hieu x(n) tu x_a(t) voi Fs = 1000 Hz");
xlabel("n"); ylabel("Bien do (V)");

subplot(2,1,2);
plot2d3(n, xq); xgrid();
title("Tin hieu sau luong tu hoa x_q(n) voi L = 1024 muc");
xlabel("n"); ylabel("Bien do (V)");
