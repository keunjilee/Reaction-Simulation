%This program simulates the reaction between 1 and 2

Temp = 90+273.15; %in Kelvin
ReactionTime = 50*60; %in sec

%Number of individual reactions
Reactions = 1;


%Reference k values and Ea values
A(1)=24200;
Ea(1)=46.7*1000; %J/mol

for i = 1:Reactions
K(i) = A(i)*exp(-Ea(i)/(8.314*Temp));
end

Conc = [2.5 2.0 .20 0]; %in molar, initial concentrations
Time = [0 ReactionTime]; %in sec

%Run ODE solver

options = odeset('Nonnegative',1);
[TimeData,ConcData] = ode15s(@(Time,Conc)ODEfunctionReac1(Time,Conc,K),Time,Conc);



%Plot results
plot(TimeData,ConcData);
xlabel('Time /sec')
ylabel('Conc /M')
