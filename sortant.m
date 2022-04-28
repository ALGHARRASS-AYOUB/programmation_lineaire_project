function [linePivot,flagS,indexLineP]=sortant(colonePivot,tabulaire)

 b=tabulaire(1:end-1,end);
 flagS=1;

   if  all(colonePivot<=0)
     disp('Le probleme est impossible!!!!!!!!!!!!!');
     flagS=0;
     linePivot=0;
     return; 
   end
%%% traitement du cas de la dégénérence (cyclage) %%%%% 
        for i=1:length(b) 
            if colonePivot(i)>=0
               Dev(i)=b(i)/colonePivot(i);
            else
                 Dev(i)=inf;
            end
        end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
         indexLineP =min(find(Dev==min(Dev)));
     % regle de bland pour la variable sortante

         linePivot=tabulaire(indexLineP,1:end-2);
        s1='[*]la variable sortante est E';
        s2=strcat(s1,num2str(indexLineP),'{dans: ',num2str(indexLineP) ,'}');
        disp(s2);
     end



