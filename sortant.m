function [linePivot,flag,indexLineP]=sortant(colonePivot,tabulaire)

% =Enter(tabulaire);
 b=tabulaire(1:end-1,end);
 flag=1;
   if  all(colonePivot<0)
     disp('Le probleme est impossible!!!!!!!!!!!!!');
     flag=0;
     linePivot=0;
 
     
 else if(any(colonePivot==0))% all 
         disp('Probleme non bornnee!!!!!!!');
         flag=0;
       linePivot=0;
     else
%          b=b;
%          colonePivot=colonePivot
%          colonePivot(1:end-1)=colonePivot(1:end-1)
          Dev=b./colonePivot(1:end-1);
         index =find(Dev==min(Dev));
          if(length(index)~=1)
              index=min(index);% regle de bland pour la variable sortante
          end
         linePivot=tabulaire(index,:);
         indexLineP=index;
        s1='[*]la variable sortante est E';
        s2=strcat(s1,num2str(indexLineP));
        disp(s2);
     end
  end


end