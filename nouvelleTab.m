function [nouvelleTab,x,base,horsbase]=nouvelleTab(tabCurrent)

[colonePivot,indexColP]=Entrer(tabCurrent);
[Lpvt,~,indexLineP]=sortant(colonePivot,tabCurrent);

pivot=tabCurrent(indexLineP,indexColP);
tabCurrent(indexLineP,:)=tabCurrent(indexLineP,:)./pivot;
linePcurrent=tabCurrent(indexLineP,:);
for i=1:size(tabCurrent,1)
    if(i~=indexLineP)
        colPivot=tabCurrent(:,indexColP); %
        tabCurrent(i,:)=tabCurrent(i,:)-colPivot(i)*linePcurrent;
    end
    
end

nouvelleTab= tabCurrent;
bSol= nouvelleTab(1:end-1,end);

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

for i=1:length(index)
   colp=nouvelleTab(1:end-1,index(i));
  
   for j=1:length(colp)
       if(colp(j)==1)
           x(index(i))=bSol(j);
       end 
   end 
end


end
      
   







