syms x
f2=2000;
lx=input('Ingrese largo');

f(x)=(340/2)*(x/lx);

i=0;

for i=0:100
    
    a=f(i);
    disp('iteracion:');i
    disp('frecuencia');a
    
    if(a>=f2)
        disp('Frecuencia schroeder:');
        a
        break
       
    end
    i=i+1

end


