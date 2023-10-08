function [dydt] = ODEfunctionReac1(Time,Conc,K)
%This function is the ODE function where the K values are unpacked and the
%rate laws are used to see how concentrations change over time.

dydt = zeros(size(Conc));
%Assigns alphabet terms to the each of the concentrations.

A = Conc(1); %1
B = Conc(2); %2
C = Conc(3); %catalyst
D = Conc(4); %3


if Conc(4)>=2.5 || Conc(4)>=2.0
   dydt(1)=0;
   dydt(2)=0;
   dydt(3)=0;
   dydt(4)=0;
else

%dA/dt
dydt(1) = -K(1)*C;

%dB/dt
dydt(2) = -K(1)*C;

%dC/dt
dydt(3) = -K(1)*C+K(1)*C;

%dD/dt
dydt(4) = K(1)*C;

end

  
