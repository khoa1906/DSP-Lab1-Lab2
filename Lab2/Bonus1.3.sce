clc;
clear;

// Kiem chung tinh tuan hoan cua cau e) x(n)
n = 0:47;
x = cos(%pi*n/2) - sin(%pi*n/8) + 3*cos(%pi*n/4 + %pi/3);

scf(0);
clf();

plot2d3(n, x);
xgrid();

title("Tin hieu x(n) trong cau e)- Chu ky N = 16 mau");
xlabel("Chi so mau n");
ylabel("Bien do x(n)");
