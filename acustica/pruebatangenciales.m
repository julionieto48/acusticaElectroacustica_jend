syms x y
% modos tangenciales
f2=2000;lx=input('Ingrese largo');ly=input('Ingrese ancho');

f(x,y)=(340/2)*sqrt( ((x/lx)^2)* ((y/ly)^2));


%f(perms())

i=1;% empiezan en 1, de lo contrario serian axiales
%cont=1



%while cont<=4
%    vect=[i j];
%    perms(vect)
    
%    i=i+1;j=j+1;
%    cont=cont+1;
    
%end


for i=1:1:4
    
    disp('En la iteracion en x');i
    j=1;
    
    for j=1:1:4
        disp('En la iteracion en y');j
        frec=f(i,j);
        if(frec>= f2)&& (j~=i)
            break
        end
        
    end
           
end




%for i=1:1:4
    
%    disp('En la iteracion en x');i
    
    
%    while (j<4)
%       disp('En la iteracion en y');j
%        frec=f(i,j);
%        if(frec>= f2)
%            break
%        end
%        j=j+1;
%    end
           
%end
   

disp('La frecuencia schroeder es ...');
frec