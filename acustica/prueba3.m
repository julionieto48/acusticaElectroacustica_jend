clc
clear all
parametrofrec=[0 0.8 1 1 1 0.9];
mater=[0.2 0.35 0.7 0.65 0.6 0.55];

Material=matera.*[0 1 1 1 1 1];

for n=0.05:0.05:1
    curvadesplazada=(parametrofrec-[0*n n n n n n]);
    diferencia=Material-curvadesplazada
    mater=(sum(diferencia)<=0.1)==0
    if mater==1
        curvadesplazada(3)
        break
    end
end
 


%for n=0.05:0.05:1
      
     
%    curvadesplazada=(parametrofrec-[0*n n n n n n])
 %   diferencia=Material-curvadesplazada
  %  
   % matera1=(find(diferencia<0));
    %matera1nuevo=diferencia(matera1)
    %matera2=(sum(a1new)<=0.1)==0
    
    %if a1==1
        %a_w=curvadesplazada(3)
        %break
    %end
    
%end

for n=0.05:0.05:1.2
    
    
    curvadesplazada=(parametrofrec-[0*n n n n n n])
    diferencia=Material-curvadesplazada
    
    matera1=(find(diferencia<0));
    matera1nuevo=diferencia(matera1)
    b2=sum(matera1nuevo)
    
    a2=((-1).*b2<=0.1)==0
    
    if a2==0
        a_w=curvadesplazada(3)
        break
    end
    
end

