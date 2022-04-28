function maximisation(A,b,c)
clc
[tab,Solution,ValeurFctObj]=SimplexeSolution(A,b,c);
disp(strcat('la valeur de la fonction objective est: fobj=',' ',num2str(ValeurFctObj)));
disp(strcat('Solution optimale =',' [ ',num2str(Solution),']'));
end