function [f_sInter,f_sCal,f1,f2,r_o,Z_i,R_m,mag_z_ee,mag_z_eeCo,f,L_E] = Mag_ZeeCurve(R_E, R, showGraph)
%   CHRISTIAN R. MORA 2017-2
%Mag_ZeeCurve Calcula la magnitud de la función de impedancia electrica de
%entrada Z_ee.

%   Esta función requiere de una interfaz de audio mínimo de dos canales
%   de entrada, y uno de salida, con el cual se pueda realizar lo
%   siguiente:
%   1) Se debe hacer un circuito en serie con el altavoz de impedancia
%   R_E y un resistor de resistencia R.
%   2) Se tienen una salida de voltaje alterno e_g que alimenta al cto.
%   3) Se tienen dos entradas de voltaje, uno al altavoz (v_s)(CHANNEL:1)
%   y otro a las mismas bornas del circuito donde entra e_g (CHANNEL:2).

%   |Z_ee(f)| se calcula a partir un varios voltajes alternos que
%   determinan v_s, y e_g para todas las frecuencias de entrada de
%   Mag_ZeeCurve.
%   El voltaje (v_r) en el resistor resulta de hacer e_g - v_s.
%   Finalmente se aplica la ecuación |Z_ee(f)| = R*(v_s/v_r)

%PARÁMETROS DE SALIDA:
%   f_sInter: frecuencia de resonancia resultante de |Z_ee(f)| interpolada.
%   f_sCal: frecuencia de resonancia resultante de |Z_ee(f)| medida.
%   f1,f2: frecuencias de corte por encima y abajo de f_s.
%   r_o: relación entre la impedancia máxima y la resistencia eléctrica de
%   la bobina.
%   Z_i: impedancia que cruza con la frecuencia de corte superior e
%   inferior.
%   R_m: |Z_ee(f_s)| = R_m.
%   mag_z_ee: |Z_ee(f)| medida.
%   mag_z_eeCo: |Z_ee(f)| interpolada.
%   L_E: inductancia del altavoz.

%PARÁMETROS DE ENTRADA
%   showGraph: 1: si se quiere ver, 2 si no se quiere ver.
%   R_E: Resistencia altavoz
%   R: Resistencia
%%
if nargin < 2
    error('myfuns:somefun2:FaltanInputs', ...
        'requiere los dos valores de resistencia de entrada');
end
if nargin > 3
    error('myfuns:somefun2:TooManyInputs', ...
        'requires at most 3 optional inputs');
end
fs = 44100;
f1 = 78:1:180; f2 = 200:400:20000;
f = horzcat([0:1:77],f1,f2);

x = 0:1/fs:0.5;
for i = 1:length(f)
    disp(sprintf('%s%d%s','f = ', f(i),' Hz'))
    y = sin(2*pi*f(i)*x);
    l = length(y)/fs;
    sound(y,fs)
    recorder = audiorecorder(fs,16,2);
    record(recorder,l)
    pause(l+0.1)
    voltajes = getaudiodata(recorder);
    v_s(i) = sqrt(mean(voltajes(10000:20000,1).^2)); %canal 1: v_speaker
    e_g(i) = sqrt(mean(voltajes(10000:20000,2).^2)); %canal 2: e_g v_total
    v_r(i) = e_g(i) - v_s(i);
end 

mag_z_ee= R*(v_s(2:end)./v_r(2:end));
f = f(2:end); f = f(1:find(f==9800));
muestreo = 0.001;
ff1 = min(f):muestreo:max(f)*0.5;
mag_z_ee = mag_z_ee(1:find(f==9800));
mag_z_eeCo = interp1(f,mag_z_ee,ff1,'pchip');
nargin
switch nargin
    case 2
        showGraph = 2;
end

if showGraph == 1
    semilogx(ff1,mag_z_eeCo,'b',f(1:find(f==9800)),mag_z_ee(1:find(f==9800)),'r'); grid on
    ylabel('|Z_{ee}| [\Omega]','FontName','Times New Roman','FontSize',16);
    xlabel('f [Hz]','FontName','Times New Roman','FontSize',16);
elseif showGraph == 2
    1;
end

[R_m, pos] = max(mag_z_eeCo);
f_sInter = ff1(pos)

R_E = min(mag_z_ee)
r_o = R_m/R_E
Z_i = sqrt(R_E*R_m)

for i = 1:pos
    dif(i) = abs(Z_i-mag_z_eeCo(i));
end
f1 = ff1(find(dif==min(dif)))

dif2 = 1; %cualquier numero positivo
j = find(mag_z_eeCo == R_m);
while dif2 > 0
    j = j + 1; %este muestreo es el paso de ff1
    dif2 = mag_z_eeCo(j) - Z_i;
end
f2 = ff1(j)
f_sCal = sqrt(f1*f2)

pos_del_max = find(mag_z_eeCo==max(mag_z_eeCo));
L_E = sqrt((mag_z_eeCo(pos_del_max:length(ff1))).^2- R_E^2)./(2.*pi.*ff1(pos_del_max:length(ff1)));
L_E = mean(L_E)

end