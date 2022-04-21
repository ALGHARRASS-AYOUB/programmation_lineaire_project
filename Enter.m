function [colonePivot,indexColP]=Enter(tabulaire)

DernierLine=tabulaire(end,:);
index =min(find(DernierLine==max(DernierLine)));
colonePivot=tabulaire(:,index);
indexColP=index;
% on doit traiter le cas de plus que 2 var 
if(index==1)
    disp('[*]la variable entrant est x1');
end 
if(index==2)
    disp('[*]la variable entrant est x2');
end 
for i=3:size(tabulaire,2)-2
    if(index==i)
        s1='[*]la variable entrant est A';
        s2=strcat(s1,num2str(i));
        disp(s2);
       
    end
end


end