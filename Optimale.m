function flag=Optimale(tabulaire)
 flag=0;
%  DernierLigne=tabulaire(end,:);
 DernierLigne=tabulaire(end,1:end-2);
 if all(DernierLigne<=0)
     flag=1;
 else 
     disp('[!]-solution pas optimale ... ');   
 end
end
