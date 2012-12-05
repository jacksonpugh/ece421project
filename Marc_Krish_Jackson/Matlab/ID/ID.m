clear; close all; clc;

Vdd = 1.8;%%linspace(3.3,5);%[1.8 3.3 5];

pf = .18e-6;

% Vtp = .45;
% Vtn = .45;
% unCox = 270e-6;
% upCox = 70e-6;
% lambdaL = .08e-6;
% 
% B = sqrt((1/4)*(unCox/upCox));
% 
% TC_Vtn = -.003;
% TC_Vtp = -.003;

Vgo = 1.206;
m = 2.3;
k = 1.3806488e-23;
q = 1.60217646e-19;
Is = 1e-18;

Id = 1e-6;

To = 20+273.15;
T = linspace(-50,100)+273.15;%linspace(-50,100)+273.15;

Vbeo = k*To/q*log(Id/Is);

Vbe = Vgo.*(1-T./To)+Vbeo.*T./To+m*k.*T./q.*log(To./T)+ k.*T./q.*log(Id/Id);



dVbe_dT = 1/To*(Vbeo - Vgo)+m*k/q*(log(To./T)-1)
%dVbe_dT = -2.4e-3;

TC_Vbe = 1/Vbeo*dVbe_dT


plot(T,Vbe)
%%

rd = k*T/(q*Id);


Rin = inf;
Rout = rd;

