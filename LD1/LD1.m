% LD1_Darijus_Hrodel.m
% Vardas Pavardė: Darijus Hrodel
% Grupė:          EDIF-25/2
% Data:           2026-09-14
%
% Skriptinis programavimas - 1 Laboratorinis darbas (LD1)
% "Darbo MATLAB aplinkoje ir GitHub naudojimo pagrindai"

clear; clc; close all;

%% Privaloma užduotis (6 balai):

%% 7. Skriptas iš 1 pav.

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]  |  F_2 [-x-]')

%% 8. Pagalbos paieška apie sin, plot, title
% Šias komandas paleiskite atskirai MATLAB Command Window lange -
% jos atidaro pagalbos informaciją, todėl čia jos paliktos kaip komentarai.
%
% 1 būdas - komanda "help" (tekstinė pagalba tiesiai Command Window lange):
%   help sin
%   help plot
%   help title
%
% 2 būdas - komanda "doc" (atidaro pilną dokumentaciją Help naršyklėje):
%   doc sin
%   doc plot
%   doc title
%
% 3 būdas - "lookfor" (ieško raktažodžio visų funkcijų aprašymuose):
%   lookfor title
%
% 4 būdas - paspaudus F1 pažymėjus funkcijos pavadinimą Editor'iuje,
%           arba per meniu Help -> Documentation ir įvedus funkcijos vardą.
%
% Trumpa santrauka, ką sužinosit
%   sin(x)   - grąžina x (radianais) sinuso reikšmę; x gali būti skaliaras,
%              vektorius ar matrica (funkcija veikia po elementą).
%   plot(x,y)- nubraižo 2D grafiką pagal x ir y taškų koordinates; galima
%              braižyti kelias kreives vienu iškvietimu (plot(x1,y1,x2,y2,...))
%              ir nurodyti stilių ('o-r' = apskritimai, ištisinė linija, raudona).
%   title(t) - uždeda pavadinimą virš esamo (aktyvaus) grafiko lango/ašių.


%% 9. linspace, size, max sintaksė
% linspace(a,b)      - grąžina 100 tolygiai išdėstytų taškų nuo a iki b
% linspace(a,b,n)    - grąžina n tolygiai išdėstytų taškų nuo a iki b
%                       (skirtingai nei ":" operatorius, čia nurodomas taškų
%                       KIEKIS, o ne žingsnis)
v_pvz = linspace(0, 10, 5)      %#ok<NOPTS>

% size(A)            - grąžina [eilučių_sk, stulpelių_sk] (2 reikšmės viename vektoriuje)
% [r,c] = size(A)     - grąžina atskirai eilučių skaičių r ir stulpelių skaičių c
% size(A,1)           - grąžina tik eilučių skaičių
% size(A,2)           - grąžina tik stulpelių skaičių
A_pvz = magic(3);
dydis          = size(A_pvz)     %#ok<NOPTS>
[eil, stulp]   = size(A_pvz)     %#ok<NOPTS>

% max(x)              - jei x vektorius, grąžina didžiausią elementą;
%                       jei x matrica, grąžina didžiausią KIEKVIENO STULPELIO elementą (eilutės vektorius)
% [m,i] = max(x)      - papildomai grąžina ir didžiausio elemento indeksą i
% max(A,[],1)         - didžiausi elementai kiekviename stulpelyje (numatytasis)
% max(A,[],2)         - didžiausi elementai kiekvienoje eilutėje
% max(A,B)            - po elementą lygina dvi to paties dydžio matricas/vektorius
[didziausias, indeksas] = max(y) %#ok<NOPTS>

% Pagalba (help/doc) rekomenduoja susijusias funkcijas, pvz.:
%   su linspace - susijusios: colon (:), logspace
%   su size     - susijusios: length, numel, ndims
%   su max      - susijusios: min, sort, cummax


%% Papildoma užduotis (4 balai): 

%% 1. Kintamasis N = paskutinis studento ID numerio skaitmuo
N = 0;   % <-- ĮRAŠYKITE savo studento ID numerio PASKUTINĮ skaitmenį

%% 2. Vektorius: pirmas elementas N+1, paskutinis N+4, žingsnis 0,5
v = N+1 : 0.5 : N+4      %#ok<NOPTS>

%% 3. Matrica A (3x3): pirmas elementas N, kiekvienas tolesnis +1 didesnis
A = reshape(N : N+8, 3, 3).'      %#ok<NOPTS>

%% 4. Žaliai pažymėtų eilučių/stulpelių atrinkimas (pagal jums skirtą schemą a/b/c)
% ĮSIDĖMĖKITE: tikslūs indeksai priklauso nuo TIKSLIAI JUMS SKIRTOS schemos
% (a, b arba c), todėl žemiau pateikiami tik pavyzdiniai atrankos būdai -
% pasirinkite/pritaikykite tuos, kurie atitinka jūsų schemoje pažymėtas
% eilutes ir stulpelius, arba sujunkite kelis:
%
%   A(3, 2)        - viena konkreti eilutė ir stulpelis (pvz., a) variantas)
%   A(2, :)        - visa 2-oji eilutė
%   A(3, 1:2)      - 3-ios eilutės 1 ir 2 stulpeliai
%   A([2 3], :)    - 2 ir 3 eilutės kartu
%   A(:, 1)        - visas 1-as stulpelis
%   A(1, [1 3])    - 1-os eilutės 1 ir 3 stulpeliai
%
% Pavyzdys (pakeiskite pagal savo schemą):
pazymeta = A(2, :)      %#ok<NOPTS>

%% 5. Vektoriaus v prijungimas prie matricos A
% Jei v turi 4 elementus, o A yra 3x3, tiesiogiai sujungti (concatenate)
% negalima - dydžiai turi sutapti. Pasirinkite VIENĄ iš variantų:
%
% a) Sutrumpinti v iki 3 elementų ir pridėti kaip naują eilutę (1x3 + 3x3 -> 4x3):
A_su_eilute = [A; v(1:3)]      %#ok<NOPTS>
%
% b) Arba paversti v stulpeliu ir sutrumpinti iki 3 elementų, pridėti kaip
%    naują stulpelį (3x3 + 3x1 -> 3x4):

