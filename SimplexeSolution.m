function  [tab,Solution,ValeurFctObj]=SimplexeSolution(A,b,c)
tab=tabulaire(A,b,c);
 disp('[+]Solution de base Initiale:');
 nombreXi=zeros(1,size(A,2));   
 Solution=[nombreXi b']
 iteration=1;
while(Optimale(tab)==0)
    %%%% début de la résolution en mentionnant le nombre d'itération %%%%
    disp(strcat('[/][',num2str(iteration),']-----------------------------------------------------'))
    [tab,Solution,base,horsbase]=nouvelleTab(tab);
    disp('-----------------------------------------------------------------------------------[/]')
    Base=base'
    HB=horsbase'
    disp('==============================================================================================')
    disp(tab);
    disp('==============================================================================================')
    Solution=Solution
    iteration=iteration+1;
end
ValeurFctObj=-tab(end,end);

end