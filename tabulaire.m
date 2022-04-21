function [tab]=tabulaire(A,b,c)
n=length(A);
I=eye(n);
z=zeros(n,1);
 tab=[A I  z b ];
 f=[c z' -1 0];
 tab=[tab;f];
 disp('##################### Tableau  du Simplexe #################');
 simpleTable=array2table(tab);
 simpleTable.Properties.VariableNames(1:2)={'x1','x2'};
 simpleTable.Properties.VariableNames(size(tab,2)-1:size(tab,2))={'z','b'};
   disp(simpleTable);
 
  
      
  end

