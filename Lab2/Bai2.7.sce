clc;
clear;

// Mien thoi gian chung cho ca 2 tin hieu
n = -2:2;

// Bieu dien 2 tin hieu tren cung mien thoi gian n (kem zero-padding)
x1 = [0, 1, 1, 3, -2];
x2 = [0, 0, 1, 2, 3];

// Phep nhan tung phan tu tuong ung (toan tu .*)
y = x1 .* x2;

// Hien thi do thi trong cung mot cua so
scf(0);
clf();

subplot(3,1,1);
plot2d3(n, x1);
xgrid();
title("Tin hieu x1(n)");
xlabel("n");
ylabel("Bien do");

subplot(3,1,2);
plot2d3(n, x2);
xgrid();
title("Tin hieu x2(n)");
xlabel("n");
ylabel("Bien do");

subplot(3,1,3);
plot2d3(n, y);
xgrid();
title("Tin hieu tich y(n) = x1(n) . x2(n)");
xlabel("n");
ylabel("Bien do");
