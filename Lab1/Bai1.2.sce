clc;
clear;
scf(0);
clf();

// Cau 1: Tin hieu tuong tu trong 5 chu ky
A = 3;
fa = 50;
Ta = 1/fa;
t = linspace(0, 5*Ta, 1001);
xa = A*sin(100*%pi*t);

// Cau 2: Lay mau voi Fs = 300 mau/giay
Fs = 300;
Ts = 1/Fs;
N0 = 6;
n = 0:(5*N0-1);            // 30 mau: 0,1,...,29
xn = A*sin(100*%pi*n*Ts);

// Khac phuc sai so so hoc tai cac diem bang 0
xn(abs(xn) < 1e-10) = 0;

// Cau 4: Luong tu hoa cat bot ve 0
Delta = 0.1;
xqn = Delta*fix(xn/Delta);

// Hien thi tat ca do thi trong cung mot cua so
subplot(3,1,1);
plot(t, xa);
xtitle("Analog signal xa(t)", "t (s)", "Amplitude");
xgrid();

subplot(3,1,2);
plot2d3(n, xn);
xtitle("Discrete-time signal x(n)", "n", "Amplitude");
xgrid();

subplot(3,1,3);
plot2d3(n, xqn);
xtitle("Quantized signal xq(n)", "n", "Amplitude");
xgrid();
