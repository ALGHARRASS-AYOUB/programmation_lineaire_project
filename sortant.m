function [linePivot,flagS,indexLineP]=sortant(colonePivot,tabulaire)

% =Enter(tabulaire);
 b=tabulaire(1:end-1,end);
 flagS=1;
   if  all(colonePivot<0)
     disp('Le probleme est impossible!!!!!!!!!!!!!');
     flagS=0;
     linePivot=0;
     return;
   end
     
%  else if(any(colonePivot==0))% all 
%          disp('Probleme non bornnee!!!!!!!');
%          flagS=0;
%        linePivot=0;
  
%          b=b;
%          colonePivot=colonePivot
%          colonePivot(1:end-1)=colonePivot(1:end-1)
          Dev=b./colonePivot(1:end-1);
         index =min(find(Dev==min(Dev)));
     % regle de bland pour la variable sortante

         linePivot=tabulaire(index,1:end-2);
         indexLineP=index;
        s1='[*]la variable sortante est E';
        s2=strcat(s1,num2str(indexLineP));
        disp(s2);
     end



