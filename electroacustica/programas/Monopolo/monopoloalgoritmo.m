clc;clear all;

h = figure; axis([-10 10 -10 10]);grid on;hold on;scatter(0,0);operaciones = 2;
xlabel('metros','FontSize',12,'FontWeight','bold','Color','r');ylabel('metros','FontSize',12,'FontWeight','bold','Color','r');
radio_esfera = 5; angulo = 0:359; x = radio_esfera * cosd(angulo);y = radio_esfera * sind(angulo);
plot(x,y);



% encontrar distancia de punto de presion
[x,y] = ginput(operaciones);
scatter(x,y,'filled');
p1 = [x(1),y(1)];p2 = [x(2),y(2)];%coordenadas de puntos 
scatter(x(1),y(1)); scatter(x(2),y(2));legend('Punto 1','Punto 2');
d1 = sqrt(p1(1)^(2)+ p1(2)^(2));d2 = sqrt(p2(1)^(2)+ p2(2)^(2));% distancias



% condiciones iniciales
frec = 1000;p_0 = 0.9;U = 1*10^(-3);%[Hz], %[kg/m3],[m3/seg]
w = 2 * (pi) * frec;  c = 340; %frecang [rad/seg]  ,[m/seg]
k = w / c; %[1/m}


mag_p1 = abs(i*w*p_0* U * exp(-i*k*(radio_esfera-d1))* (1/(1+i*k*d1)));
dB_spl_1 = 20*log10(mag_p1/(20*10^(-3)));dB_spl_1= num2str(dB_spl_1)  ;msgbox(dB_spl_1,'SPL1')

mag_p2 = abs(i*w*p_0* U * exp(-i*k*(radio_esfera-d2))* (1/(1+i*k*d2)));
dB_spl_2 = 20*log10(mag_p2/(20*10^(-3)));dB_spl_2 = num2str( dB_spl_2)  ;msgbox(dB_spl_2,'SPL2')











% [X, Y]=meshgrid(x,y)
% 
% i = 0; j = 0;
% 
% for ( : i< X)
% end
% 
% 
% 
% [X, Y]=meshgrid(x,y)
% dcm_obj = datacursormode(h);
% datacursormode on;h.Pointer = 'circle';



 
        
       








% set(dcm_obj,'DisplayStyle','datatip','SnapToDataVertex','off');
% pos = get(h,'Position');
% eventdata = get(h);
% pos = eventdata.Position;disp(['You clicked X:',num2str(pos(1)),', Y:',num2str(pos(2))]);
%set(a,'DisplayStyle','datatip','SnapToData','off');
%s = getCursorInfo(a)
 %x=s.Position;