function [colonePivot,indexColP]=Enter(tabulaire)

DernierLine=tabulaire(end,1:end-2);
indexColP =min(find(DernierLine==max(DernierLine)));
colonePivot=tabulaire(1:end-1,indexColP);

% on doit traiter le cas de plus que 2 var 
        s1='[*]la variable entrante est x';
        s2=strcat(s1,num2str(indexColP));
        disp(s2);

end
