% LD2_Darijus_Hrodel.m
% Vardas Pavardė: Darijus Hrodel
% Grupė:          EDIF-25/2
% Data:           2026-09-28
% Variantas:      1 
% Skriptinis programavimas - 2 Laboratorinis darbas (LD2)
% "Darbo MATLAB aplinkoje ir GitHub naudojimo pagrindai"

clear; clc; close all;

% Privaloma užduotis (6 balai):

% 1. Vienmačiai masyvai.

a = 5:34:2;
b = exp(a);
c = a ./ b;
disp(c');

% 2. Dvimačiai masyvai.

A = [pi/2, 3i; log(2), 2*pi];
B = [exp(A(1,1)), exp(A(1,2))];
C = [A; B];
eilutes_sumos = sum(A,2);
disp(A);
disp(eilutes_sumos);

% 3. Praktinis veiksmų su masyvais taikymas.

A_amp = 5;
f = 5;
sigma = 1.5;
U1 = 3;
U2 = 2;
t = 0:0.001:1;
s = A_amp * sin(2*pi*f*t);
n = sigma * randn(size(s));
x = s + n;

atrinkta = x(x > U1);

y = x;
y(abs(y) < U2) = 0;

kiekis_nefiltruoto = length(x);
kiekis_atrinktu = length(atrinkta);
didziausia = max(y);
maziausia = min(y);

disp(kiekis_nefiltruoto);
disp(kiekis_atrinkto);
disp(didziuasia);
disp(maziausia);

% Papildoma užduotis.

A = input('Įveskite vektorių A: ');
pirma_dalis = A(10:end);
antra_dalis = A(1:9);
B = [pirma_dalis, antra_dalis];
disp('vektorius B yra:');
disp(B);
