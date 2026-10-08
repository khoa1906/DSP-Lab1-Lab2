clc;
clear;
scf(0);
clf();

// Can chinh hai tin hieu theo cung chi so n
n = -1:3;
x1 = [0 0 1 3 -2];
x2 = [0 1 2 3 0];

// Cong hai tin hieu theo tung mau
y = x1 + x2;

subplot(3,1,1);
plot2d3(n, x1);
title("Signal x1(n)");
xlabel("n");
ylabel("x1(n)");
xgrid();

subplot(3,1,2);
plot2d3(n, x2);
title("Signal x2(n)");
xlabel("n");
ylabel("x2(n)");
xgrid();

subplot(3,1,3);
plot2d3(n, y);
title("Sum Signal y(n) = x1(n) + x2(n)");
xlabel("n");
ylabel("y(n)");
xgrid();
