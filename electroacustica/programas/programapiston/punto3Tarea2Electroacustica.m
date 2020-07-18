clear all
ka=0:0.001:25;
R_MR= ka.^2./(1+ka.^2);
X_MR=ka./(1+ka.^2);
loglog(ka,R_MR)
grid on
hold on 
loglog(ka,X_MR)
xlim([0.01 22])
ylim([0 2])
New_XTickLabel = get(gca,'xtick');
set(gca,'XTickLabel',New_XTickLabel);
New_YTickLabel = get(gca,'ytick');
set(gca,'YTickLabel',New_YTickLabel);
ylabel('$${Z_M\over \pi a^2 \rho_0 c }$$', ...
  'Interpreter', 'Latex','fontsize',20)
xlabel('$${ka}$$', ...
  'Interpreter', 'Latex','FontName','Times New Roman','fontsize',20)
legend('R_M_R','X_M_R')
title('Christian R. Mora Parga, Z_M de radiación de esfera pulsante de radio a','FontName','Times New Roman','fontsize',15)

figure
R_MRi= 1-besselj(1,(2.*ka))./ka;
X_MRi=StruveH1(2.*ka)./ka;
loglog(ka,R_MRi)
grid on
hold on 
loglog(ka,X_MRi)
xlim([0.01 22])
ylim([0.0001 2])
New_XTickLabel = get(gca,'xtick');
set(gca,'XTickLabel',New_XTickLabel);
New_YTickLabel = get(gca,'ytick');
set(gca,'YTickLabel',New_YTickLabel);
ylabel('$${Z_M\over \pi a^2 \rho_0 c }$$', ...
  'Interpreter', 'Latex','fontsize',20)
xlabel('$${ka}$$', ...
  'Interpreter', 'Latex','fontsize',20)
legend('R_M_R','X_M_R')
title('Christian R. Mora Parga, Z_M de radiación de pistón en pantalla infinita de radio a','FontName','Times New Roman','fontsize',15)
