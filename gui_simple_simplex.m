options.Resize = 'on';
title = 'entrer les donnes ';
prompt = {'les coefficients dans la fonction objectif (vecteur c)',...
    'les coefficients des variables dans les contraintes (matrice A)',...
    'vecteur b',...
    'max(entrer 1)  min(entrer 2)'};

DefaultText = {'[ ]','[ ]','[ ]',''};
a = inputdlg(prompt,title,1,DefaultText,options);

c    = eval(a{1});
A = eval(a{2});
b = eval(a{3});
type = eval(a{4});
clc
if (type==1)
    maximisation(A,b,c);
end

if (type==2)
    minimisation(A,b,c);
end
domainerealisable(A,b,c);
