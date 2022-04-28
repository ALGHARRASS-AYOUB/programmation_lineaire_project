function [tab]=tabulaire(A,b,c)
n=size(A,1);
I=eye(n);
z=zeros(n,1);
 tab=[A I  z b ];
 f=[c z' -1 0];
 tab=[tab;f];
 disp('##################### Tableau  du Simplexe #################');
 simpleTable=array2table(tab);
 for i=1:length(c)
      s1='x';
        s2=strcat(s1,num2str(i));
     simpleTable.Properties.VariableNames(i)={s2};
 end
  for i=length(c)+1:size(tab,2)-2
      s1='E';
        s2=strcat(s1,num2str(i-length(c)));
     simpleTable.Properties.VariableNames(i)={s2};
  end
 simpleTable.Properties.VariableNames(size(tab,2)-1:size(tab,2))={'z','b'};
   disp(simpleTable);
 
  
      
  end

