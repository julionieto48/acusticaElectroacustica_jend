clc
%ponderacion a
x=[100 125 160 200 250 315 400 500 630 800 1000 12500 1600 2000 2500 3150 4000 5000];
o=[-19.1 -16.1 -13.4 -10.9 -8.6 -6.6 -4.8 -3.2 -1 -0.8 0 0.6 1 1.2 1.3 1.2 1 0.5];



a=(7.60076433753727e-49*(x.^17))-(2.67448393835781e-44*(x.^16))+(3.85887698816006e-40*(x.^15))-(3.09859536082214e-36*(x.^14));
b=(1.56633973076260e-32*(x.^13))-(5.31540567990630e-29*(x.^12))+(1.56633973076260e-32*(x.^13))-(5.31540567990630e-29*(x.^12));
c=(1.25709722216652e-25*(x.^11))-( 2.11985231073700e-22*(x.^10))+( 2.58444685363789e-19*(x.^9))-( 2.29516535197432e-16*(x.^8))-( 2.29516535197432e-16*(x.^7))+ (1.48784629123017e-13*(x.^6))-(7.01635412136660e-11*(x.^5)) +(2.38294746032997e-08*(x.^4));
d=-(5.71909881377222e-06*(x.^3))+( 0.000939081395662317*(x.^2))-(0.0999053615786423*(x.^2))+(6.26560550761019*x)-(194.731403280446);
y=c+d;

figure
plot(x,o,'r');xlim([100,1000]);ylim([-10,30]);
hold on
plot(x,y);grid on;title('Interpolacion de la ponderacion A');xlabel('Hz');ylabel('dB');

%ponderacion lineal

ylin= (1.8218*x + 101.08);

figure

plot(x,ylin);grid on;title('ponderacion datos obtenidos');xlabel('Hz');ylabel('dB');




% ponderacion a con datos obtenidos para perfil a
pa=[99.6 94,5 90.9	88.3 86.3 84.7 84.2 82.8 81.7 80.4];


figure
semilogx(pa);grid on;title('Interpolacion de la ponderacion A datos obtenidos');xlabel('Hz');ylabel('dB');
xlim([2,10]);ylim([-10,30]);


%ponderacion lineal

ylin= (1.8218*x + 101.08);

figure
plot(x,ylin);grid on;title('ponderacion datos obtenidos');xlabel('Hz');ylabel('dB');





