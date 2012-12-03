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


Vref = (-Vtp+Vdd+B*Vtn)./(B+1)

TC_Vref = 1./Vref*1/(B+1)*(-TC_Vtp*Vtp+B*TC_Vtn*Vtn)

TC_Vref*1e6

S_Vdd = Vdd./(Vdd-Vtp+B*Vtn)

%%

L1 = 5*pf; L2 = L1;

P = 100e-6;

Id = P./Vdd;

W1 = 2*Id*L1./(unCox*(Vref-Vtn).^2)

W1*1e6

W1./L1

W2 = 4*W1

W2/L2
%%

rds1 = L1/(lambdaL*Id); rds2 = rds1;

gm1 = 2*Id/(Vref-Vtn); gm2 = gm1;

Zin = rds1/(1+gm1*rds1)*(rds1+rds2)/(rds1-gm2*rds1*rds2)

Zout = (1/rds1 + 1/rds2)^-1