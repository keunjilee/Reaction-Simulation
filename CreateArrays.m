%This program creates an array storing productivity and an array
%storing cost for each base-solution combination. Data generated
%from the KineticSimulatorOptimizer is used 


%DMF and Cs2CO3 using all points
i=1;
result1c=zeros(500,2); 
for catLoadingInc=1:5
    for rxnTimeInc=1:10
        for startConcBInc=1:10
            result1c(i,1)=productivityResult(1,catLoadingInc,rxnTimeInc,startConcBInc);
            result1c(i,2)=costResult(1,catLoadingInc,rxnTimeInc,startConcBInc);
            i=i+1;
        end
    end
end

%DMF and Cs2CO3 using half of the points
i=1;
result1=zeros(125,2); 
for catLoadingInc=1:5
    for rxnTimeInc=1:5
        for startConcBInc=1:5
            result1(i,1)=productivityResult(1,catLoadingInc,rxnTimeInc,startConcBInc*2)*213.275; %Productivity in grams/hour
            result1(i,2)=costResult(1,catLoadingInc,rxnTimeInc*2,startConcBInc*2); %Cost
            i=i+1;
        end
    end
end

%DMF and Cs3PO4 using half of the points
i=1;
result2=zeros(125,2);
for catLoadingInc=1:5
    for rxnTimeInc=1:5
        for startConcBInc=1:5
            result2(i,1)=productivityResult(2,catLoadingInc,rxnTimeInc,startConcBInc*2)*213.275;
            result2(i,2)=costResult(2,catLoadingInc,rxnTimeInc*2,startConcBInc*2);
            i=i+1;
        end
    end
end

%DMF and K2CO3 using half of the points
i=1;
result3=zeros(125,2);
for catLoadingInc=1:5
    for rxnTimeInc=1:5
        for startConcBInc=1:5
            result3(i,1)=productivityResult(3,catLoadingInc,rxnTimeInc,startConcBInc*2)*213.275;
            result3(i,2)=costResult(3,catLoadingInc,rxnTimeInc*2,startConcBInc*2);
            i=i+1;
        end
    end
end

%DMF and K3PO4 using half of the points
i=1;
result4=zeros(125,2);
for catLoadingInc=1:5
    for rxnTimeInc=1:5
        for startConcBInc=1:5
            result4(i,1)=productivityResult(4,catLoadingInc,rxnTimeInc,startConcBInc*2)*213.275;
            result4(i,2)=costResult(4,catLoadingInc,rxnTimeInc*2,startConcBInc*2);
            i=i+1;
        end
    end
end

%Toluene and Cs2CO3 using half of the points
i=1;
result5=zeros(125,2);
for catLoadingInc=1:5
    for rxnTimeInc=1:5
        for startConcBInc=1:5
            result5(i,1)=productivityResult(5,catLoadingInc,rxnTimeInc,startConcBInc*2)*213.275;
            result5(i,2)=costResult(5,catLoadingInc,rxnTimeInc*2,startConcBInc*2);
            i=i+1;
        end
    end
end

%Toluene and Cs3PO4 using half of the points
i=1;
result6=zeros(125,2);
for catLoadingInc=1:5
    for rxnTimeInc=1:5
        for startConcBInc=1:5
            result6(i,1)=productivityResult(6,catLoadingInc,rxnTimeInc,startConcBInc*2)*213.275;
            result6(i,2)=costResult(6,catLoadingInc,rxnTimeInc*2,startConcBInc*2);
            i=i+1;
        end
    end
end

%Toluene and K2CO3 using half of the points
i=1;
result7=zeros(125,2);
for catLoadingInc=1:5
    for rxnTimeInc=1:5
        for startConcBInc=1:5
            result7(i,1)=productivityResult(7,catLoadingInc,rxnTimeInc,startConcBInc*2)*213.275;
            result7(i,2)=costResult(7,catLoadingInc,rxnTimeInc*2,startConcBInc*2);
            i=i+1;
        end
    end
end

%Toluene and K3PO4 using half of the points
i=1;
result8=zeros(125,2);
for catLoadingInc=1:5
    for rxnTimeInc=1:5
        for startConcBInc=1:5
            result8(i,1)=productivityResult(8,catLoadingInc,rxnTimeInc,startConcBInc*2)*213.275;
            result8(i,2)=costResult(8,catLoadingInc,rxnTimeInc*2,startConcBInc*2);
            i=i+1;
        end
    end
end
       