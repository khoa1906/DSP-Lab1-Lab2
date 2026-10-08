clc;
clear;
scf(0);
clf();

// Mau tai n = 0 la gia tri 3
n = -1:1;
x = [1 3 -2];

// Dao thoi gian tren mien chi so doi xung
x_reverse = x(length(x):-1:1);

// Thanh phan chan va le
xe = (x + x_reverse)/2;
xo = (x - x_reverse)/2;

subplot(3,1,1);
plot2d3(n, x);
title("Original Signal x(n)");
xlabel("n");
ylabel("x(n)");
xgrid();

subplot(3,1,2);
plot2d3(n, xo);
title("Odd Component xo(n)");
xlabel("n");
ylabel("xo(n)");
xgrid();

subplot(3,1,3);
plot2d3(n, xe);
title("Even Component xe(n)");
xlabel("n");
ylabel("xe(n)");
xgrid();
