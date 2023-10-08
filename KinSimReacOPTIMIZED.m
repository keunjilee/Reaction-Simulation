%KinSimReac2bV2

%Set up costs in $/mol
SMCost=234.03*29/25;
AnCost=107.145*42/100;
CatCost=224.51*1890/25;
BaseSolutionCost=[129+325.82*46.8/25,129+493.688*415.02/25,129+138.21*269/50,129+212.27*22.6/25,79.4+325.82*46.8/25,79.4+493.688*415.02/25,79.4+138.21*269/50,79.4+212.27*22.6/25];




kArray = [0.1076,0.1009,0.1037,0.0159,0.0386,0.1450,0.1001,0.0049;9.50E-06,5.72E-05,.0008,.0002,9.21E-05,7.92E-05,0.0626,9.04E-05];
Temp = 105+273.15; %in Kelvin
Conc = [.125 0 0 0 0]; %in molar, initial concentrations

productivityResult=zeros(8,5,10,10); %base,catLoadingInc,rxnTimeInc,startConcBInc,
costResult=zeros(8,5,10,10);

%Number of individual reactions
Reactions = 2;

for basesolution=1:8
    for catLoadingInc=1:5
        for rxnTimeInc=1:10
            for startConcBInc=1:10
                Conc(3)=.009+(1E-3)*(catLoadingInc-1); %catalyst loading starting at .009 and incrementing by 1E-3
                reactionTime=((rxnTimeInc-1)*50+100)*60; %in seconds, starting at 100 minutes and incrementing by 50 minutes 
                %until 1300 minutes
                Conc(2)=0.125+(startConcBInc-1)*0.08; %concentration of 9 starting at .125 and incrementing by 0.08
                K(1) = kArray(1,basesolution);
                K(2) = kArray(2,basesolution);
                Time = [0 reactionTime]; %in seconds
                options = odeset('Nonnegative',1);
                [TimeData,ConcData] = ode15s(@(Time,Conc)ODEfunctionReac2(Time,Conc,K),Time,Conc);
                productivityResult(basesolution,catLoadingInc,rxnTimeInc,startConcBInc)=ConcData(end,4)/(reactionTime/3600); %Productivity in moles product/hr
                costResult(basesolution,catLoadingInc,rxnTimeInc,startConcBInc)=.125*SMCost+(0.125+(startConcBInc-1)*0.08)*AnCost+(.009+(1E-3)*(catLoadingInc-1))*CatCost+.125*BaseSolutionCost(basesolution); %Cost in $/L
            end
        end
    end
end


