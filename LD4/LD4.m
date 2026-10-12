 % LD4_Darijus_Hrodel.m
% Vardas Pavardė: Darijus Hrodel
% Grupė:          EDIF-25/2
% Data:           2026-10-05
% Variantas:      1 
% Skriptinis programavimas - 4 Laboratorinis darbas (LD4)
% "Darbo MATLAB aplinkoje ir GitHub naudojimo pagrindai"

% 1a.
theta = 0:0.1:2*pi;
r = 0:0.05:1;
[T, R] = meshgrid(theta, r);

X = R .* cos(T);
Y = R .* sin(T);
Z = 1 - 2*X.^2 - 3*Y.^2;

figure(1);
h = surf(X, Y, Z);
rotate(h, [0 0 1], 45);
colormap(hot);
shading interp;
axis tight;
grid on;
title('Pavirsius f(x,y) = 1 - 2x^2 - 3y^2');
xlabel('x');
ylabel('y');

% 1b.
x = -2:0.1:2;
y = -2:0.1:2;
[X, Y] = meshgrid(x, y);

e = 2.718281828459045;
Z = sin(abs(X + Y) / 20) .* e.^(-abs(X + Y));

figure(2);
h = surf(X, Y, Z);
rotate(h, [0 0 1], 60);
colormap(jet);
shading interp;
axis tight;
grid on;
title('Pavirsius f(x,y) = sin(|x+y|/20) * e^{-|x+y|}');
xlabel('x');
ylabel('y');

% Papildoma.
x = -1:0.1:1;
y = -1:0.1:1;
[X, Y] = meshgrid(x, y);
Z = 1 - (X.^2 + Y.^2);

figure(3);

subplot(1, 3, 1);
surf(X, Y, Z);
colormap(jet);
shading flat;
axis tight;
grid on;
title('shading flat');
xlabel('x');
ylabel('y');

subplot(1, 3, 2);
surf(X, Y, Z);
colormap(jet);
shading faceted;
axis tight;
grid on;
title('shading faceted');
xlabel('x');
ylabel('y');

subplot(1, 3, 3);
surf(X, Y, Z);
colormap(jet);
shading interp;
axis tight;
grid on;
title('shading interp');
xlabel('x');
ylabel('y');