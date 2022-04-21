function [colonePivot,indexColP]=Enter(tabulaire)

DernierLine=tabulaire(end,:);
index =min(find(DernierLine==max(DernierLine)));
colonePivot=tabulaire(:,index);
indexColP=index;
% on doit traiter le cas de plus que 2 var 
        s1='[*]la variable entrante est x';
        s2=strcat(s1,num2str(index));
        disp(s2);

%     if(index>3)
%         s1='[*]la variable entrant est E';
%         s2=strcat(s1,num2str(index));
%         disp(s2);
%        
%     end
end
