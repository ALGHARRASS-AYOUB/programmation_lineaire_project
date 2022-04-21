function  [tab,Solution,ValeurFctObj]=SimplexeSolution(A,b,c)
tab=tabulaire(A,b,c);
 disp('[+]Solution de base Initiale:');
    Solution=[0 0 b']
while(Optimale(tab)==0)
    disp('[/]----------------------------------------')
    [tab,Solution]=nouvelleTab(tab);
    disp('------------------------------------------[/]')
    
end
ValeurFctObj=-tab(end,end);

end