clear all, clc
%% hodograma
t = 0:0.01:2*pi;
r_u = exp(-t).*cos(t);
% x = r_u.*cos(t);
% y = r_u.*sin(t);

compass(t,r_u)
grid on
%%
clear all, clc
t = 0:0.01:2*pi;
f = 680;
l = 2;
lamda = 340/f;
l/lamda
ka = 10;
%y = sin(pi*(l/lamda).*sin(t))./(pi*(l/lamda).*sin(t));
y = (2.*besselj(1,ka.*sin(t)))./(ka.*sin(t));
DI = 20*log10(abs(y)./2e-5);
max(DI)
polar(t,-max(DI)+DI)
%%
Omega = linspace(0,20000,500000);
Z = 1 + 1./(1i*Omega);
Y = 1i.*Omega./(1+1i*Omega);
plot(Z, 'bo'), hold on, plot(Y,'ro'), grid on
legend('Z: Impedancia','Y: Admitancia')
ylabel('$$ {Im(Z)\over S(x)E}, {Im(Y)S(x)E} $$', ...
  'Interpreter', 'Latex','fontsize',16)
xlabel('$${Re(Z)\over S(x)E}, {Re(Y)S(x)E}$$', ...
  'Interpreter', 'Latex','fontsize',16)
title('$${Z \over S(x)E},  {YS(x)E}$$', ...
  'Interpreter', 'Latex','fontsize',16)

%%
clc, clear all
m=41277; % kg
g=9.81; % m/s^2
W=m*g;
S=105.63; % m^2
b=27.69; % m
ro=1.225;
T=2*68400; %N
a=340; %m/s;
CDo = 0.02;
AR = b^2/S;
e1=0.85;
K=1/(3.14*e1*AR);
j=1;
for V=49:1:320 % velocity in m/s
    for i = 1:0.1:60 % climb angle in deg
        gam = i/57.3;
        LHS=sin(gam);
        num=2*K*W*(cos(gam))^2;
        den=ro*S*V^2;
        RHS=(T/W)-(0.5*ro*S*CDo*(V^2)/W)-(num/den);
        if abs(LHS)-abs(RHS)<0.002
            if LHS > RHS
                gama(j) = gam*57.3;
                V1(j) = V;
                LS(j) = LHS;
                RS(j) = RHS;
                VV(j) = V*sin(gam);
                VH(j) = V*cos(gam);
            end
        end
        j=j+1;
    end
end
plot(VH, VV,'b.'); grid on
xlabel('V_H (m/s)')
ylabel('V_V (m/s)')
