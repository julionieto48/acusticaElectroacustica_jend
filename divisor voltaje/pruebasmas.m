clc ; clear all
cantspkrs = 2;
impedancia_de_carga = input('ingrese la impedancia de carga(2,4,6,8,16)');
resistencia_altavoces = input('ingrese la resistencia de los speakers(4,8,12)');

impedanciadeprueba = (resistencia_altavoces)*2;
if impedanciadeprueba == impedancia_de_carga
    disp('la configuracion es los dos speakers en serie');
    [X,map] = imread('2_spk_serie','png');imshow(X,map); 
    
elseif (impedanciadeprueba ~= impedancia_de_carga)
    impedanciadeprueba = resistencia_altavoces*resistencia_altavoces/(resistencia_altavoces+resistencia_altavoces);
    if (impedanciadeprueba == impedancia_de_carga)
        [X,map] = imread('2_spk_paralelo','png');imshow(X,map);
    else
        msgbox('NOT FOUND');[X,map] = imread('not_found','png');imshow(X,map);
    end   
end

%%
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

