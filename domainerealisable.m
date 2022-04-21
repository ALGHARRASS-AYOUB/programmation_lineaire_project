function domainerealisable(A,b,c)
n=length(b);
indice=find(b==min(b));
x=0:0.01:min(b)/A(indice,1);


for i=1:n
    y=b(i)/A(i,2) -A(i,1)*x/A(i,2);
    
    %stoker les valeur de y de chaque droite dans un line de matric Maty
    Maty(i,:)=y;
    plot(x,y);
    hold on;
end
area(x,min(Maty))
hold on;
for k=c(1)*min(b)/A(indice,1):5:100
    z=k/c(2) -c(1)*x/c(2) ;
    plot(x,z,'g');
end




end


