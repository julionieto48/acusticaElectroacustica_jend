clc; clear all;

% script programa 1 sonido en vivo

% para 1 speaker
impedancia_de_carga = input('ingrese la impedancia de carga(2,4,6,8,16)');
resistencia_altavoces = input('ingrese la resistencia de los speakers(4,8,12)');

if impedancia_de_carga == resistencia_altavoces
    [X,map] = imread('1_spk','png');imshow(X,map); 
    

elseif impedancia_de_carga ~= resistencia_altavoces
    msgbox('NOT FOUND');[X,map] = imread('not_found','png');imshow(X,map);
    
end

sensibilidadspk = input('ingrese sensibilidad del speaker %ref 1m 1W');
potenciaspk = input('ingrese consumo de potencia del speaker en watts');

%wattsamplificador =input('ingrese potencia electrica del amplificador') ;
consumo_total = potenciaspk;
tolerancia = input('ingrese tolerancia');potenciaideal = consumo_total + (consumo_total*tolerancia/(100));
disp('el ideal de su amplificador en potencia es de');potenciaideal



Sensibilidad_total = sensibilidadspk;
%spl a potencia de todos spk
nivelapotencia = 10*log10(consumo_total/1);SPL1 = Sensibilidad_total + nivelapotencia 

distancia = input('ingrese la distancia en la cual desea conocer el spl')
% onda esferica
 SPL2 = SPL1 -20*log10(distancia)

 x = 1:0.5:100; funct = SPL1 - 20*log(x);
 %figure;semilogy(funct);grid on;title('Decaimiennto SPL'); xlabel('Distancia');ylabel('SPL')
 %hold on ; scatter(distancia,SPL2)
 figure;plot(funct);grid on;title('Decaimiennto SPL'); xlabel('Distancia');ylabel('SPL')
 hold on ; scatter(distancia,SPL2)
 
 


%%
% para 2 speaakers
cantspkrs = 2;
impedancia_de_carga = input('ingrese la impedancia de carga(2,4,6,8,16)');
resistencia_altavoces = input('ingrese la resistencia de los speakers(4,8,12)');

impedanciadeprueba = (resistencia_altavoces)*2;
if impedanciadeprueba == impedancia_de_carga
    disp('la configuracion es los dos speakers en serie');
    [X,map] = imread('2_spk_serie','png');imshow(X,map); 
    
elseif (impedanciadeprueba > impedancia_de_carga)
    impedanciadeprueba = resistencia_altavoces*resistencia_altavoces/(resistencia_altavoces+resistencia_altavoces);
    if (impedanciadeprueba == impedancia_de_carga)
        [X,map] = imread('2_spk_paralelo','png');imshow(X,map);
    else
        msgbox('NOT FOUND');[X,map] = imread('not_found','png');imshow(X,map);
    end   
end

sensibilidadspk = input('ingrese sensibilidad del speaker %ref 1m 1W');
potenciaspk = input('ingrese consumo de potencia del speaker en watts');

%wattsamplificador =input('ingrese potencia electrica del amplificador') ;
consumo_total = potenciaspk*cantspkrs;
tolerancia = input('ingrese tolerancia');potenciaideal = consumo_total + (consumo_total*tolerancia/(100));
disp('el ideal de su amplificador en potencia es de');potenciaideal

% con todos spk

Sensibilidad_total = 10*log(10^(sensibilidadspk/10)+10^(sensibilidadspk/10));
%spl a potencia de todos spk
nivelapotencia = 10*log10(consumo_total/1);SPL1 = Sensibilidad_total + nivelapotencia 

distancia = input('ingrese la distancia en la cual desea conocer el spl')
% onda esferica
 SPL2 = SPL1 -20*log10(distancia)

x = 1:0.5:100; funct = SPL1 - 20*log(x);
figure;semilogy(funct);grid on;title('Decaimiennto SPL');xlabel('Distancia');ylabel('SPL')
 
 


%%
% para 4 speakers

cantspkrs = 4;
impedancia_de_carga = input('ingrese la impedancia de carga(2,4,6,8,16)');
resistencia_altavoces = input('ingrese la resistencia de los speakers(4,8,12)');

impedanciadeprueba = (resistencia_altavoces)*cantspkrs

if impedanciadeprueba == impedancia_de_carga
    disp('la configuracion es los dos speakers en serie')
    [X,map] = imread('4_spk_todosserie','png');imshow(X,map); 
elseif (impedanciadeprueba ~= impedancia_de_carga)
    impedanciadeprueba = 1/((1/resistencia_altavoces+resistencia_altavoces)*2);
    if (impedanciadeprueba == impedancia_de_carga)
        disp('la configuracion es de series y paralelos')
        [X,map] = imread('4_spk_serieparalelo','png');imshow(X,map) 
    elseif (impedanciadeprueba ~= impedancia_de_carga)
        impedanciadeprueba = 1/((1/resistencia_altavoces)*cantspkrs)
        if (impedanciadeprueba == impedancia_de_carga)
            disp('la configuracion es de  paralelos')
            [X,map] = imread('4_spk_todosparalelo','png');imshow(X,map);
        else
            msgbox('NOT FOUND');[X,map] = imread('not_found','png');imshow(X,map);
          
        end 
    end
end


