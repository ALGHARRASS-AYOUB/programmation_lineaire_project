function [nouvelleTab,x,base,horsbase]=nouvelleTab(tabCurrent)

[colonePivot,indexColP]=Enter(tabCurrent);
[Lpvt,~,indexLineP]=sortant(colonePivot,tabCurrent);
Lpvt=Lpvt %
pivot=tabCurrent(indexLineP,indexColP);
tabCurrent(indexLineP,:)=tabCurrent(indexLineP,:)./pivot;
linePcurrent=tabCurrent(indexLineP,:);
for i=1:size(tabCurrent,1)
    if(i~=indexLineP)
        colonePivot=colonePivot %
        linePcurrent=linePcurrent %
        tabCurrent(i,:)=tabCurrent(i,:)-colonePivot(i)*linePcurrent;
    disp(tabCurrent) %
    end
    
end

nouvelleTab= tabCurrent;
 ntabCurrent=array2table(tabCurrent);
 ntabCurrent.Properties.VariableNames(1:2)={'x1','x2'};
 ntabCurrent.Properties.VariableNames(size(tabCurrent,2)-1:size(tabCurrent,2))= {'z','b'};
bSol= nouvelleTab(1:end-1,end)

%x=[0 0 0 0 0];
x=zeros(1,size(tabCurrent,2)-2);
dernierLine=nouvelleTab(end,1:end-2);
base=zeros(length(dernierLine),1);
horsbase=zeros(length(dernierLine),1);
for i=1:length(dernierLine)
    if(dernierLine(i)~=0)
        horsbase(i)=i;
    end
    if(dernierLine(i)==0)
        base(i)=i;
    end
end

index=find(base);
disp('[*]la base est :B');
B=base'
HB=horsbase'
for i=1:length(index)
   colp=nouvelleTab(1:end-1,index(i));
  
   for j=1:length(colp)
       if(colp(j)==1)
           x(index(i))=bSol(j);
       end 
   end 
end
x

end
      
   







