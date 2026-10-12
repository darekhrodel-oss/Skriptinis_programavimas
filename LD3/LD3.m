% LD3_Darijus_Hrodel.m
% Vardas Pavardė: Darijus Hrodel
% Grupė:          EDIF-25/2
% Data:           2026-10-05
% Variantas:      1 
% Skriptinis programavimas - 3 Laboratorinis darbas (LD3)
% "Darbo MATLAB aplinkoje ir GitHub naudojimo pagrindai"

% 1.
t = linspace(-pi, pi, 50);
y = sin(t);

figure(1);
plot(t, y, 'r--');
title('Funkcija y(t) = sin(t)');
xlabel('t');
ylabel('y');
grid on;
axis tight;
legend('y(t) = sin(t)', 'Location', 'northeastoutside');

x = linspace(-pi, pi, 50);
y1 = -x.^2 + 9;
y2 = x.^3 - 2*x.^2 - 9;

figure(2);
plot(x, y1, 'b', x, y2, 'm');
title('Funkcijos y(x)');
xlabel('x');
ylabel('y');
grid on;
axis tight;
legend('y(x) = -x^2 + 9', 'y(x) = x^3 - 2x^2 - 9', 'Location', 'northeastoutside');

% 2.
M = [6 3 8 9;
    2 5 7 6;
    5 8 9 4;
    7 6 5 8;
    4 9 6 7;
    8 7 10 5];

vidurkis = (M(1,:) + M(2,:) + M(3,:) + M(4,:) + M(5,:) + M(6,:)) / 6;
lab = [1 2 3 4];

figure(3);

subplot(2, 1, 1);
bar(M');
axis([0.5 4.5 0 10]);
title('a) Studentu pazymiai uz laboratorinius darbus');
xlabel('Laboratorinio darbo numeris');
ylabel('Pazymys');
legend('Jonas', 'Petras', 'Ona', 'Ruta', 'Tomas', 'Egle', 'Location', 'northeastoutside');

subplot(2, 1, 2);
stem(lab, vidurkis);
axis([0 5 0 10]);
title('b) Laboratoriniu darbu vidurkiai');
xlabel('Laboratorinio darbo numeris');
ylabel('Vidurkis');

% Papildoma.
A = 5;
f = 5;
sigma = 1.5;
U1 = 3;
U2 = 2;

t = linspace(0, 1, 1001);
s = A * sin(2*pi*f*t);
n = sigma * randn(size(t));
x = s + n;

y = x;
y(abs(y) < U2) = 0;

ta = t(x > U1);
xa = x(x > U1);

xmax = max(xa);
xmin = -max(-xa);
tmax = ta(xa == xmax);
ymax = xa(xa == xmax);
tmin = ta(xa == xmin);
ymin = xa(xa == xmin);

figure(4);

subplot(1, 2, 1);
plot(t, x, 'b-', t, y, 'm--', [0 1], [U1 U1], 'r', [0 1], [U2 U2], 'k', 'LineWidth', 1.25);
axis([0 1 -10 10]);
grid on;
title('a) Pradinis ir filtruotas signalas', 'Color', 'b', 'FontSize', 14);
xlabel('t, s');
ylabel('U, V');
legend('Pradinis signalas', 'Filtruotas signalas', 'Riba U_1', 'Riba U_2', 'Location', 'southoutside');

subplot(1, 2, 2);
stem(ta, xa, 'b.', 'LineWidth', 1.25);
hold on;
plot(tmax, ymax, 'go', 'MarkerSize', 10, 'LineWidth', 1.25);
plot(tmin, ymin, 'ks', 'MarkerSize', 10, 'LineWidth', 1.25);
axis([0 1 0 12]);
grid on;
title('b) Signalo reiksmes virs U_1', 'Color', 'b', 'FontSize', 14);
xlabel('t, s');
ylabel('U, V');
legend('Signalo reiksmes', 'Maksimali reiksme', 'Minimali reiksme', 'Location', 'southoutside');