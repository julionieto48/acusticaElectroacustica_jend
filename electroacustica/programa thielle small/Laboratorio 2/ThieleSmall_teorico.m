clc, clear all
rho_0 = 1.204; c = 343.2;
a = input('Ingrese el radio del speaker en metros: ') %4' = 0,1016m
R_E = input('Ingrese la resistencia del altavoz: ') 
X_MAX = input('Ingrese la excursión máxima del altavoz en metros: ')
M_x = input('Ingrese la Masa mecánica externa conocida en gramos: ')

M_MR = rho_0*pi*a^2*0.85*a
r_o = R_M/R_E
f_S = sqrt(f_1*f_2)

S_D = pi*a^2
% R_MS = 
M_MS = M_x/((f_s/f_sx)^2-1)
omega_S = 2*pi*f_S
C_MS = 1/(omega_S^2*M_MS)
R_ME = (Bl^2)/(R_ET); C_ME = (L_E)/(Bl^2)
R_MT = R_ME + R_MS
Q_TS = omega_S*(M_MS/R_MT)
Q_MS = omega_S*(M_MS/R_MS)
 
Q_ES = omega_S*(M_ms/R_ME)

V_D = S_D*X_MAX

V_AS = rho_0*c^2*S_D^2*C_MS
Bl = sqrt((2*pi*f_S*R_E*M_MS/Q_ES))
n_0 = 4*pi^2*f_S^3*V_AS/(c^3*Q_ES)

omega = 0:0.1:20000;
Z_mov = (Bl^2/R_MS).*((R_MS/M_MS).*(i.*omega)./((i.*omega)^2)+(R_MS/M_MS).*(i.*omega)+1/(C_MS*M_MS))
Z_ee = R_E + L_E*(i*omega) + Z_mov;
semilogx(omega,Z_ee)

f_1 = input('Ingrese frec corte inferior ')
f_2 = input('Ingrese frec de corte superior')
fs= sqrt(f_1*f_2)