# programmation_lineaire_project
optimisation with the simplex method 
many functions to perform the simplex method with a gui interaction.



Les exemples qu’on va les traiter sont (le fichier “exemple pour vérification.txt”):


A=[1 1 ;3 15;5 10];b=[20 225 160]';c=[5 11];  max x=(10/3,47/3,7/3, 0, 0)

A=[1 3 2 ;1 1 1;3 5 3];b=[30 24 60]';c=[2 5 3];  max  x=(15/2 15/2 0)

A=[3 9 7;8 5 3;2 7 3];b=[5 4 7]';c=[40 35 51];  max  x=(0 0 5/7 0 0 0)
A=[3 0 0;3 -2 -4;-1 4 3;0 1 0;2 0 8;0 0 1];b=[0 1 -3 0 2 0]';c=[7 12 10];  max  x=(-1/5,-4/5,0,0,0,0,0,0)

A=[1 -1 0;2 0 1;1 1 1];b=[2 4 3]';c=-[4 0 3]; min  x=(1 0 2 1 0 0)  

A=[1 3;2  1];b=[3 2]';c=[-1 -1]; min x=(3/5,4/5)

A=[10 6;4 6;2 6];b=[45 36 27]';c=[-50 -30]; min  x=(9/4 15/4 0 9/2 0)

A=[1 2;-1 1;1 -1;2 -1];b=[26 3 2 10]';c=[-3 -2]; min x=?

A=[3 4 2;9 5 1];b=[6 4]';c=[81 55 20]; min x=(0,1/3,7/3)

A=[-1 -1 -1;1 -1 1;-1 1 2];b=[3 4 1]';c=[-2 -3 1]; min  non réalisable


Domaine réalisable
la fonction « domainerealisable » permet de tracer le domaine réalisable d’un problème de PL.
On peut résumer cette méthode en trois étapes. Tout d'abord, la région réalisable décrite par le système de contraintes Ax<=b  avec x>0 est dessinée. Ensuite, une direction de la ligne de niveau de la fonction objective f est déterminée. Enfin en trace les lignes de niveau pour différentes valeurs de p. on peut trouver facilement le sommet (point extrême) de la région réalisable où le minimum ou la valeur maximale de z est atteinte ou conclure que la fonction objectif est illimitée.

Domaine réalisable
la fonction « domainerealisable » permet de tracer le domaine réalisable d’un problème de PL.
On peut résumer cette méthode en trois étapes. Tout d'abord, la région réalisable décrite par le système de contraintes Ax<=b  avec x>0 est dessinée. Ensuite, une direction de la ligne de niveau de la fonction objective f est déterminée. Enfin en trace les lignes de niveau pour différentes valeurs de p. on peut trouver facilement le sommet (point extrême) de la région réalisable où le minimum ou la valeur maximale de z est atteinte ou conclure que la fonction objectif est illimitée.


Méthode optimale :
Maintenant, une fois que la solution est trouvée, on doit vérifier si cette solution est la plus optimale, en d’autres termes c’est la condition d’arrêt de l’algorithme. Le principe est simple, on doit parcourir les coûts réduits obtenus dans chacune des itérations et qui sont positionnés dans la dernière ligne du tableau du Simplexe et une fois qu’on trouve qu’il on a au moins un seul qui est positif on peut conclure que la solution actuelle n’est pas du tout optimale et qu’il faut passer à l’itération suivante.En effet, la fonction OptimaleMax a pour but de vérifier la solution actuelle, par contre on a la possibilité d’ajouter des instructions au sein de la fonction nouvelleTab pour vérifier l’optimalité.


Méthode Entrer  :
Après la réalisation du premier tableau du simplexe, détermination de la base initiale, on doit décider quelle variable va entrer dans la nouvelle base et de puis avoir une autre nouvelle base.
La démarche dans la maximisation ,se fait en déterminant une valeur maximale dans la dernière  ligne correspondant à z et la variable ayant cette valeur comme coefficient va entrer dans la base.  
la méthode ayant comme retour la colonne de pivot et l' indice de cette colonne dans la table du simplexe.

Méthode Sortant :
La deuxième étape consiste à faire sortir une variable de la base pour la remplacer par le retour de la méthode entrer . 
Dans ce contexte, on a développé la méthode sortante pour déterminer la variable sortante en se basant sur la règle du plus petit rapport .
on a également traiter certains cas anomalies qui va être suspicieux d'empêcher à atteindre la solution optimale.En guise d’exemple:
- la règle de Bland en choisissant le argmin des rapport.
-les problèmes non réalisables .
-les problèmes non bornés.
la méthode ayant pour retour la ligne de pivot, l’indice de ce pivot dans la table du simplexe et le booléenne flagS qui désigne la chance de d’avoir ou pas la solution.


Méthode nouvelleTab :
Après avoir déterminé la variable entrante ainsi que la variable sortante on peut donc accéder à l’élément pivot et réaliser les opérations élémentaires nécessaires pour passer au tableau de l’itération suivante à savoir :  
Division de la ligne pivot par l’élément pivot.  
Mettre les autres éléments de la colonne pivot à zéros.  
Modification des autres cases du tableau en suivant les règles de pivot 


Méthode Maximisation:
Maintenant, on peut dire que nous avons complété toutes les étapes de l’algorithme du Simplexe pour un problème de maximisation, il nous reste une dernière fonction dans laquelle on va regrouper toutes les fonctions rédigées précédemment et appliquer cette dernière à notre exemple du cours pour s’assurer que qu’elle fonctionne à la perfection.


Méthode minimisation : 
au lieu de maximiser la fonction, on va la menimiser par une formule mathématique simple min(f)=-max(-f) 
