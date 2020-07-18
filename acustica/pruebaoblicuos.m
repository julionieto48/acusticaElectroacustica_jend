syms x y z
% modos oblicuos
f2=2000;lx=input('Ingrese largo');ly=input('Ingrese alto');lz=input('Ingrese ancho');

f(x,y,z)=(340/2)*sqrt( ((x/lx)^2)* ((y/ly)^2)*((z/lz)^2));

i=1;

for i=1:1:4
    
    disp('En la iteracion en x');i
    j=1;
    
    for j=1:1:4
        disp('En la iteracion en y');j
        k=1;

        for k=1:1:4
            disp('En la iteracion en z');k
            frec=f(i,j,k);
            if(frec>= f2)| (k~=i)&& (k~=j)&&(j~=i)
            break
            end
        end
        
        
        
        
    end
           
end


disp('La frecuencia schroeder es ...');
frec