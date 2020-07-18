v=[500 100 123 134 156 124 187 321 124  100 300];
v=sort(v);
l=length(v);
comprovant=zeros(1,l);

a=find(diff(v)==0);
rep=v(a)






%%
%el menor s eencuentra en la primer posicion
i=v(1);
%max valor
m=max(v);
%encontrar el paso
paso= (m-1)/l;
cantrep=zeros(1,l)

for i=i:paso:l
    
    for
        if(v(i)==rep)
            cantrep=1;
        elseif (v(1)~=rep)
        cantrep=0;
        end
    

    
    
end