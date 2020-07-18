clc
clear all
arch= xlsread('dbyfrecuencias');

% grafica por tercio de octava

frecuencia= xlsread('dbyfrecuencias','C3:C32');

%Grafica del promedio
%frecuencia=[25 31 40 50 63 80 100 125 160 200 250 315 400 500 630 800 100 1250 1600 2000 2500 3150 4000 5000 6300 8000 10000 12500 16000 20000  ];
figure
dbprom= xlsread('dbyfrecuencias','AB3:AB32');
bar(frecuencia,dbprom,0.9);title('Promedio en dB por frecuencia');xlabel('Hz por banda de octava');ylabel('dB');grid on;

 %medicion 1
figure 
dB17= xlsread('dbyfrecuencias','E3:E32');
bar(frecuencia,dB17,0.9);title('Primer medicion=1m');xlabel('Hz por banda de octava');ylabel('dB');grid on;
 
 %medicion 2
figure 
dB19= xlsread('dbyfrecuencias','G3:G32');
bar(frecuencia,dB19,0.9);title('Segunda Medicion =2m');xlabel('Hz por banda de octava');ylabel('dB');grid on;
 
 %medicion 3
figure 
dB21= xlsread('dbyfrecuencias','I3:I32');
bar(frecuencia,dB21,0.9);title('Tercera Medicion =3m');xlabel('Hz por banda de octava');ylabel('dB');grid on;
 
 %medicion 4
figure 
dB23= xlsread('dbyfrecuencias','K3:K32');
bar(frecuencia,dB23,0.9);title('Cuarta Medicion =4m');xlabel('Hz por banda de octava');ylabel('dB');grid on;
 
 %medicion 5
figure 
dB25= xlsread('dbyfrecuencias','M3:M32');
bar(frecuencia,dB25,0.9);title('Quinta Medicion =5m');xlabel('Hz por banda de octava');ylabel('dB');grid on;
 
 %medicion 6
figure 
dB27= xlsread('dbyfrecuencias','O3:O32');
bar(frecuencia,dB27,0.9);title('Sexta Medicion =6m');xlabel('Hz por banda de octava');ylabel('dB');grid on;
 
 %medicion 7
figure 
dB28= xlsread('dbyfrecuencias','Q3:Q32');
bar(frecuencia,dB28,0.9);title('Septima Medicion =7m');xlabel('Hz por banda de octava');ylabel('dB');grid on;

 %medicion 8
figure 
dB29= xlsread('dbyfrecuencias','S3:S32');
bar(frecuencia,dB29,0.9);title('Octava Medicion =8m');xlabel('Hz por banda de octava');ylabel('dB');grid on;

 %medicion 9
figure 
dB30= xlsread('dbyfrecuencias','S3:S32');
bar(frecuencia,dB30,0.9);title('Novena medicion =9m');xlabel('Hz por banda de octava');ylabel('dB');grid on;


 %medicion 10
figure 
dB31= xlsread('dbyfrecuencias','S3:S32');
bar(frecuencia,dB31,1);title('Decima medicion =10m');xlabel('Hz por banda de octava');ylabel('dB');grid on;




% Relacion dB contra metros
d=1:10;


%por frecuencia en cada medicion

dbprom=[66.40	67.2	66.7	73.6	71.4	74.3	78.8	71.9	76.5	71.2];
%f25hz= xlsread('dbyfrecuencias','B45:K45')

figure
plot(d,dbprom);grid on;title('En 25 Hz ');
xlabel('metros');

% con los leqs
leqperfa=[99.6	94.5	90.9	88.3	86.3	84.7	84.2	82.8	81.7	80.4];

%leqperfa= xlsread('dbyfrecuencias','B50:K50')
figure
plot(d,leqperfa);grid on;title('Leq perfil A');
xlabel('metros');ylabel('dB');


%

leqperfb=[103.1	98.1	94.3	91.6	89.3	88.4	88.9	86.2	86.4	84.3];

%leqperfa= xlsread('dbyfrecuencias','B51:K51')
figure
plot(d,leqperfb);grid on;title('Leq perfil B');
xlabel('metros');ylabel('dB');

% spl

splperb=[103.5	98.4	94.5	97.2	89.4	90.2	89.4	87.6	86.4	91.4];

%leqperfa= xlsread('dbyfrecuencias','B52:K52')
figure
plot(d,splperb);grid on;title('SPL perfil B');
xlabel('metros');ylabel('dBSPL');

%ponderacion a

%x=20:0.1:20000;
%dBa= 0,0013*x + 76,894;

%figure
%frec=semilogx(x,dBa);
%grid on;title('Ponderacion A');
%xlabel('Frecuencia ');ylabel('dBA');




