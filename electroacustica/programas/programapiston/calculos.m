clc, clear all, close all;
%%
% zonas
a = 0.25;frec = 1000; w = 2*pi*frec;c = 340 ;k = w/c;
r = 0:0.0001:10;
P_r_o = abs(sin(0.5.*k.*r.*(sqrt(1+(a./r).^2)-1)));

semilogx(r./a,P_r_o), grid on
%%
% patron polar
teta = 0:0.01:2*pi;
a = 0.25;frec = 1000; w = 2*pi*frec;c = 340 ;k = w/c;
D = abs( 2*besselj(1,k.*a*sin(teta)) ./ ( k.*a.*sin(teta)) );
polar(teta,D)

%%
teta = 0:0.01:2*pi;
a = 0.25;frec = 1000; w = 2*pi*frec;c = 340 ;k = w/c;
D = abs( 2*besselj(1,k.*a*sin(teta)) ./ ( k.*a.*sin(teta)) );
polar(teta,D)

% plot::XRotate(D,teta = 0:2*pi)


[x,y] = pol2cart(teta,D);P = peaks(x,y);
figure('color','white');polarplot3d(P)


figure('color','white');[X,Y,Z] = cylinder(D);
surf(X,Y,Z)
axis square


