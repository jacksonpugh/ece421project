clear; close all; clc;

Vdd = 1.8;%%linspace(3.3,5);%[1.8 3.3 5];

pf = .18e-6;

Vtp = .45;
Vtn = .45;
unCox = 270e-6;
upCox = 70e-6;
lambdaL = .08e-6;
P = 500*10^-6;
Id = P/Vdd
Vref = 1.24;
B = sqrt((1/4)*(unCox/upCox));
WL = 2*Id/(unCox*(Vref-Vtn)^2) % W/L ratio
Kn = unCox*WL
TC_Vtn = -.003;
TC_Vtp = -.003;

R = (((-(Vref - Vtn))^2)^-1)*((2*(Vdd-Vref))/Kn)