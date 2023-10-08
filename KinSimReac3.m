%This program simulates the reaction between 4 and 5

Temp = 25+273.15; %in Kelvin
ReactionTime = 1000*60; %in seconds

%Number of individual reactions
Reactions = 3;

%Reference temperature for the k values
TempRef = 25+273.15; %in Kelvin

%K values in DMF using Cs2CO3
K(1) = 0.35;
K(2) = 0.13;
K(3) = 2.4E-5;


Conc = [.08 0.07 6.45E-4 0 0 0]; %in molar, initial concentrations
Time = [0 ReactionTime]; %in minutes

%Run ODE solver
options = odeset('Nonnegative',1);
[TimeData,ConcData] = ode15s(@(Time,Conc)ODEfunctionReac3(Time,Conc,K),Time,Conc);


%Plot results
plot(TimeData,ConcData);
xlabel('Time /s')
ylabel('Conc /M')
