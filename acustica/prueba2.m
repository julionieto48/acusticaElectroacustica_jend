clc
clear all
parametrofrec=[0.8 1 1 1 0.9];
material=[0.35 0.7 0.65 0.6 0.55]; %crear un vector en el que se guardan alfa de materiales

i=0;
diferencia= [0 0 0 0 0];


for i=0:100
    
    curvadesplazada= parametrofrec-0.05;
    diferencia= material-curvadesplazada
    
    aw=curvadesplazada(2)
    
    
    
    
    
    
    
end
disp('la rta es...');disp(aw);


%alfa500=0;

%while (alfa500 < 0.1)
    
    %curvadesplazada=parametrofrec-0.4;
    %diferencia= material -curvadesplazada;
    %alfaw=curvadesplazada(2);
    %alfa500= diferencia(2);
  
%end
%disp(alfa500)

