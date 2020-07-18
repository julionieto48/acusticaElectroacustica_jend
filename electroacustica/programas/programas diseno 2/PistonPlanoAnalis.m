function varargout = PistonPlanoAnalis(varargin)
% PISTONPLANOANALIS MATLAB code for PistonPlanoAnalis.fig
%      PISTONPLANOANALIS, by itself, creates a new PISTONPLANOANALIS or raises the existing
%      singleton*.
%
%      H = PISTONPLANOANALIS returns the handle to a new PISTONPLANOANALIS or the handle to
%      the existing singleton*.
%
%      PISTONPLANOANALIS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PISTONPLANOANALIS.M with the given input arguments.
%
%      PISTONPLANOANALIS('Property','Value',...) creates a new PISTONPLANOANALIS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PistonPlanoAnalis_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PistonPlanoAnalis_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PistonPlanoAnalis

% Last Modified by GUIDE v2.5 13-Oct-2018 01:03:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PistonPlanoAnalis_OpeningFcn, ...
                   'gui_OutputFcn',  @PistonPlanoAnalis_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before PistonPlanoAnalis is made visible.
function PistonPlanoAnalis_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PistonPlanoAnalis (see VARARGIN)

% Choose default command line output for PistonPlanoAnalis
handles.output = hObject;
graficapredet(handles)

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PistonPlanoAnalis wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PistonPlanoAnalis_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
a = str2num(get(handles.edit1,'String'));
f = str2num(get(handles.edit2,'String'));
c = 340; lamda = c/f;
k = 2*pi*f/c;
set(handles.uitable1,'data',vertcat(k*a,c/(2*a),lamda))
m = 0;
while true
    m = m + 1;
    rmdiva(m) = a./(m*lamda) - m*lamda./(4*a);
    if rmdiva(m)< 0
        break;
    end
end
r_m = rmdiva*a;
rmax = r_m(1)+5;
r1 = 0:0.0001:r_m(1);
r2 = r_m(1):0.01:rmax;
p1 = abs(sin(0.5*k.*r1.*(sqrt(1+(a./r1).^2)-1)));
p2 = abs(sin(0.5*k.*r2.*(sqrt(1+(a./r2).^2)-1)));

axes(handles.axes1);
semilogx(r1,p1,'b'), hold on
semilogx(r2,p2,'r'), grid on
xlim([0,rmax]), hold on
ylim([0,1.2]), vline(r_m(1),'r--')
text(0.01*r_m(1)/2,1.1,'Zona Fressnel','Interpreter','latex','FontSize',16)
text(r_m(1),1.1,'Zona Fraunhofer','Interpreter','latex','FontSize',16)
title('$${P(r,0)\over 2 \rho_0 c U_0 }$$', ...
  'Interpreter', 'Latex','fontsize',16)
xlabel('$${r [m]}$$', ...
  'Interpreter', 'Latex','FontName','Times New Roman','fontsize',16)
n = m;
if mod(n,2)
    A = repmat([1 0],1,(n+1)/2);
else 
    A = repmat([1 0],1,n/2);
end
A = A(1:n);
for r1 = 1:m-1
    plot(r_m(r1),A(r1),'-o'), text(r_m(r1),A(r1)+0.02,strcat('$r_{',num2str(r1),'}$'),'Interpreter','latex','FontSize',16)
end
%%
fre = 20:0.01:20e3; c = 340; 
k = 2*pi*fre/c; a = str2num(get(handles.edit1,'String'));
Re_Z_MR = 1-besselj(1,2*k*a)./(k*a);
Im_Z_MR = StruveH1(2*k*a)./(k*a); 
disp('actual = '); a
axes(handles.axes2);
loglog(k*a,Re_Z_MR),hold on, loglog(k*a,Im_Z_MR), grid on
%xlim([20, 20000]), ylim([0.001 2])
% New_XTickLabel = get(gca,'xtick');set(gca,'XTickLabel',New_XTickLabel);
% New_YTickLabel = get(gca,'ytick');set(gca,'YTickLabel',New_YTickLabel);
title('$${Z_M\over \pi a^2 \rho_0 c }$$', ...
  'Interpreter', 'Latex','fontsize',16)
xlabel('$${ka}$$', ...
  'Interpreter', 'Latex','FontName','Times New Roman','fontsize',16)
legend('R_M_R','X_M_R')
%%
% f = str2num(get(handles.edit2,'String')); 
% t = pi/2:0.01:3*pi/2;                     
% k = 2*pi*f/c; a = str2num(get(handles.edit1,'String')); ka = k*a;             
% D=abs((2.*besselj(1,ka.*sin(t)))./(ka.*sin(t))); %definición de ka, y de D
% r2 = 34+10*log10(ka^2/(1-(2.*besselj(1,2*ka)))./(2*ka))+20*log10(D);
% r2 = r2; 
% r2(r2<0)=0;
% axes(handles.axes3);
% polar(t,r2);
% title('$${|P(\theta)|}$$','Interpreter', 'Latex','FontSize', 12) 

f = str2num(get(handles.edit2,'String')); 
t = -90:0.01:90;
k = 2*pi*f/c; a = str2num(get(handles.edit1,'String')); ka = k*a;             
D = 2.*besselj(1,ka.*sin(t*pi/180))./(ka.*sin(t*pi/180));
DI = 34 + 10*log10(ka^2/(1-(2.*besselj(1,2*ka)))./(2*ka)) + 20*log10(abs(D));
DI(DI<0)=0;
Res = -max(DI)+DI;
set(handles.axes3,'visible','on')
axes(handles.axes3);
min(Res)
dirplot(t, Res,'b',[max(Res) min(Res) 4]);
title('$${|P(\theta)|}$$','Interpreter', 'Latex','FontSize', 16) 

%%
theta = pi/2:0.01:3*pi/2;
phi   = 0:0.01:2*pi;
[Theta, Phi] = meshgrid(theta, phi);
t = theta; k = 2*pi*f/c; a = str2num(get(handles.edit1,'String')); ka = k*a             
D=abs((2.*besselj(1,ka.*sin(t)))./(ka.*sin(t))); %definición de ka, y de D
r2 = 34+10*log10(ka^2/(1-(2.*besselj(1,2*ka)))./(2*ka))+20*log10(D);
r2 = r2./max(r2); r2(r2<0)=0;
H = r2;
x = H.*sin(Theta).*cos(Phi);
y = H.*sin(Theta).*sin(Phi);
z = -H.*cos(Theta);
axes(handles.axes4);
surfl(x,y,z); title('$${|P(\theta,\phi)|}$$','Interpreter', 'Latex','FontSize', 16) 
shading flat
axis equal off


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
auxLimpiar(handles)

function auxLimpiar(handles)
axes(handles.axes1); cla ;cla reset; graficapredet(handles)
axes(handles.axes2); cla; cla reset; 
axes(handles.axes4); cla; cla reset; 

function graficapredet(handles)
axes(handles.axes1); semilogx(0,0);  grid on 
title('$${P(r,0)\over 2 \rho_0 c U_0 }$$', ...
  'Interpreter', 'Latex','fontsize',16)
xlabel('$${r [m]}$$', ...
  'Interpreter', 'Latex','FontName','Times New Roman','fontsize',16)
axes(handles.axes2); loglog(0,0); xlim([0.01 22]), ylim([0 2]), grid on 
title('$${Z_M\over \pi a^2 \rho_0 c }$$', ...
  'Interpreter', 'Latex','fontsize',16)
xlabel('$${ka}$$', ...
  'Interpreter', 'Latex','FontName','Times New Roman','fontsize',16)
%axes(handles.axes3); polar(0,0); title('$${|P(\theta)|}$$','Interpreter', 'Latex','FontSize', 12)
axes(handles.axes4); polar(0,0); title('$${|P(\theta,\phi)|}$$','Interpreter', 'Latex','FontSize', 12) 
