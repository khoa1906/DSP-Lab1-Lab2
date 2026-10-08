clc;
clear;

// Tin hieu goc x(n)
n = -2:2;
x = [1, -2, 3, 1, 6];

// a) y1(n) = x(-n)
n1 = -n($:-1:1);
y1 = x($:-1:1);

scf(0); clf();
subplot(2,1,1); plot2d3(n, x); xgrid();
title("Tin hieu goc x(n)"); xlabel("n"); ylabel("Bien do");
subplot(2,1,2); plot2d3(n1, y1); xgrid();
title("y1(n) = x(-n)"); xlabel("n"); ylabel("Bien do");

// b) y2(n) = x(n+3)
n2 = n - 3;
y2 = x;

scf(1); clf();
subplot(2,1,1); plot2d3(n, x); xgrid();
title("Tin hieu goc x(n)"); xlabel("n"); ylabel("Bien do");
subplot(2,1,2); plot2d3(n2, y2); xgrid();
title("y2(n) = x(n+3)"); xlabel("n"); ylabel("Bien do");

// c) y3(n) = 2*x(-n-2)
n3 = -n($:-1:1) - 2;
y3 = 2 * x($:-1:1);

scf(2); clf();
subplot(2,1,1); plot2d3(n, x); xgrid();
title("Tin hieu goc x(n)"); xlabel("n"); ylabel("Bien do");
subplot(2,1,2); plot2d3(n3, y3); xgrid();
title("y3(n) = 2x(-n-2)"); xlabel("n"); ylabel("Bien do");
