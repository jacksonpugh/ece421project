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

%%

Veb1 = .7;
TC_Veb1 = -2.4e-3;

T = linspace(-50,100)+273;

R1 = 100e3; beta = 10;

R3 = beta*R1;

R2 = -R3*k*log(R3/R1)/(q*TC_Veb1);

K = R3/R2;

Vref = Veb1 + K*k*T./q*log(R3/R1)

TC_Vref = 1./Vref*(TC_Veb1+R3/R2*k/q*log(R3/R2))

TC_Vref*1e6

I1 = Vref/R1;

I2 = Vref/R3;

P = (I1+I2).*Vref;

P*1e6;

plot(T,Vref)