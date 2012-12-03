clear; close all; clc;

Vdd = 1.8;%%linspace(3.3,5);%[1.8 3.3 5];

pf = .18e-6;

Vtp = .45;
Vtn = .45;
unCox = 270e-6;
upCox = 70e-6;
lambdaL = .08e-6;

B = sqrt((1/4)*(unCox/upCox));

TC_Vtn = -.003;
TC_Vtp = -.003;