function [dydt] = ODEfunctionReac2(Time,Conc,K)
%This function is the ODE function where the K values are unpacked and the
%rate laws are used to see how concentrations change over time.

dydt = zeros(size(Conc));
%Assigns alphabet terms to the each of the concentrations.

A = Conc(1); %4
B = Conc(2); %5
C = Conc(3); %catalyst
D = Conc(4); %6
E = Conc(5); %7
F = Conc(6); %8
%dA/dt
dydt(1) = -K(1)*A*B*C-K(2)*A*B*C-K(3)*A*C; 

%dB/dt
dydt(2) = -K(1)*A*B*C-K(2)*A*B*C;

%dC/dt
dydt(3) = -K(1)*A*B*C-K(2)*A*B*C-K(3)*A*C+K(1)*A*B*C+K(2)*A*B*C+K(3)*A*C;

%dD/dt
dydt(4) = K(1)*A*B*C;

%dE/dt
dydt(5) = K(2)*A*B*C;

%dF/dt
dydt(6) = K(3)*A*C;
