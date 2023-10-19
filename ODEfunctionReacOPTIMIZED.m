function [dydt] = ODEfunctionReacOPTIMIZED(Time,Conc,K)
%This function is the ODE function where the K values are unpacked and the
%rate laws are used to see how concentrations change over time.

dydt = zeros(size(Conc));
%Assigns alphabet terms to the each of the concentrations.

A = Conc(1); %10
B = Conc(2); %9
C = Conc(3); %catalyst
D = Conc(4); %11
E = Conc(5);  %degraded palladium
%dA/dt
dydt(1) = -K(1)*A*B*C;

%dB/dt
dydt(2) = -K(1)*A*B*C;

%dC/dt
dydt(3) = -K(1)*A*B*C+K(1)*A*B*C-K(2)*C;

%dD/dt
dydt(4) = K(1)*A*B*C;

%dE/dt
dydt(5) = K(2)*C;
