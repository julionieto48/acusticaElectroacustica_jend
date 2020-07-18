function varargout = guiTS(varargin)
% GUITS MATLAB code for guiTS.fig
%   CHRISTIAN R. MORA 2017-2
%      GUITS, by itself, creates a new GUITS or raises the existing
%      singleton*.
%
%      H = GUITS returns the handle to a new GUITS or the handle to
%      the existing singleton*.
%
%      GUITS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITS.M with the given input arguments.
%
%      GUITS('Property','Value',...) creates a new GUITS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guiTS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guiTS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help guiTS

% Last Modified by GUIDE v2.5 03-Oct-2017 11:58:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @guiTS_OpeningFcn, ...
    'gui_OutputFcn',  @guiTS_OutputFcn, ...
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


% --- Executes just before guiTS is made visible.
function guiTS_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guiTS (see VARARGIN)

% Choose default command line output for guiTS
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guiTS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = guiTS_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global R_E R f_sInter f_sCal f1 f2 r_o Z_i R_m L_E d M_x X_max c rho_0 R_g mag_z_ee vectof
c = str2num(get(handles.edit14,'string'));
rho_0 = str2num(get(handles.edit13,'string'));
ParEntrada = get(handles.uitable1,'data');
ParEntrada = cellfun(@str2num,ParEntrada(:,1)); 
d = ParEntrada(1);
M_x = ParEntrada(2);
X_max = ParEntrada(3);
R = ParEntrada(4);
R_E = ParEntrada(5);
R_g = ParEntrada(6);
axes(handles.axes1)
[f_sInter,f_sCal,f1,f2,r_o,Z_i,R_m,mag_z_ee,mag_z_eeCo, vectof,L_E] = Mag_ZeeCurve(R_E, R, 1);
set(hObject,'visible','off')
set(handles.pushbutton3,'visible','on')
% d = 0.1524
% mx = 0.0150

function pushbutton3_Callback(hObject, eventdata, handles)
global R_E R f_sInter f_sCal f1 f2 r_o Z_i R_m L_E d M_x X_max c rho_0 R_g Q_MS Q_ES Q_TS...
    S_D M_MS C_MS V_AS V_D Bl eta_0 Sens L_p f_sx omega tf_p Z_ee fase_tf_p
axes(handles.axes2)
[~,f_sx,~,~,~,~,~,~,~,~,~] = Mag_ZeeCurve(R_E, R, 1);


Q_MS = (sqrt(r_o)*f_sCal)/(f2-f1);
Q_ES = Q_MS/(r_o-1);
Q_TS = (Q_ES*Q_MS)/(Q_ES+Q_MS);
S_D = pi*(d/2)^2;
M_MS = M_x/((f_sCal/f_sx)^2-1);
C_MS = 1/(M_MS*(2*pi*f_sCal)^2);
V_AS = rho_0*(c^2)*(S_D^2)*C_MS;
V_D = S_D*X_max ;
Bl = sqrt((2*pi*f_sCal*R_E*M_MS)/Q_ES);
eta_0 = 4*(pi^2)*(f_sCal^3)*V_AS/((c^3)*Q_ES);
L_p = 20.*log10(sqrt(2*pi*rho_0)*(f_sCal^(3/2))*sqrt(V_AS/Q_ES)/(c*2*10^(-5)));
Sens = rho_0*Bl*S_D/(2*pi*M_MS*sqrt(R_E)); %L_p/sqrt(R_E) %cálculo sin atenuadores
datosfinales = vertcat(R_m, f_sInter,f_sCal,f1,f2,f_sx,Z_i,Q_MS,Q_ES,Q_TS,M_MS,C_MS,V_AS,...
    S_D,V_D,L_E,Bl,eta_0,Sens,L_p);

set(handles.uitable2,'data',datosfinales)
 
R_ET = R_E+R_g;
omega_0 = R_ET/L_E;
R_ES = R_E*(Q_MS/Q_ES);
omega = 0:0.1:20000;

Z_mov = R_ES.*((1i*omega./(Q_MS*f_sCal))./((1i*omega./f_sCal).^2+1i.*omega./(Q_MS*f_sCal)+1));
Z_ee = R_E + 1i.*omega.*L_E + Z_mov;

LP = ((1i.*omega/f_sCal).^2)./(((1i.*omega./f_sCal).^2)+(1i.*omega./(f_sCal*Q_TS))+1);
H = omega_0./(1i.*omega+omega_0);
tf_p = 20.*log10(abs((rho_0*Bl*S_D/(2*pi*M_MS*R_ET)).*H.*LP)./(20*10^-6));
fase_tf_p = rad2deg(angle((rho_0*Bl*S_D/(2*pi*M_MS*R_ET)).*H.*LP));
figure
semilogx(omega,abs(Z_ee));xlim([10,30000]); grid on 
ylabel('|Z_{ee}| [\Omega]','FontName','Times New Roman','FontSize',16);
xlabel('f [Hz]','FontName','Times New Roman','FontSize',16);
figure 
subplot(2,1,1)
semilogx(omega,tf_p); grid on 
ylabel('|L_p(j\omega)| [dB]','FontName','Times New Roman','FontSize',16);
xlabel('f [Hz]','FontName','Times New Roman','FontSize',16);
subplot(2,1,2)
semilogx(omega,fase_tf_p); grid on 
ylabel('arg(L_p(j\omega)) [º]','FontName','Times New Roman','FontSize',16);
xlabel('f [Hz]','FontName','Times New Roman','FontSize',16);

set(handles.pushbutton4,'visible','on')

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB

options_doc_nocode.format = 'pdf';
options_doc_nocode.showCode = false;
%options_doc_nocode.useNewFigure = true;
publish('DataSheetTS.m',options_doc_nocode);

% --------------------------------------------------------------------
function Help_Callback(hObject, eventdata, handles)
% hObject    handle to Help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto1 = 'Bienvenido al programa de medición y cálculo de parámetros Thiele-Small';
a1 = 'Por favor ingrese los parámetros conocidos R_E, R_g, X_max, diametro, Masa externa,'
a = 'Esta función requiere de una interfaz de audio mínimo de dos canales de entrada, y uno de salida, con el cual se pueda realizar lo siguiente:';
b = '1) Se debe hacer un circuito en serie con el altavoz de impedancia';
c = '2) Se tienen una salida de voltaje alterno e_g que alimenta al cto.'
d = '3) Se tienen dos entradas de voltaje, uno al altavoz (v_s)(CHANNEL:1)';
e = 'y otro a las mismas bornas del circuito donde entra e_g (CHANNEL:2).';
f = '|Z_ee(f)| se calcula a partir un varios voltajes alternos que';
g = 'determinan v_s, y e_g para todas las frecuencias de entrada de Mag_ZeeCurve.';
h = 'El voltaje (v_r) en el resistor resulta de hacer e_g - v_s.'
i = 'Finalmente se aplica la ecuación |Z_ee(f)| = R*(v_s/v_r)';
texto = {texto1,a1,a,b,c,d,e,f,g,h,i};
texto = strjoin(texto,'\n');

msgbox(texto,'Ayuda');


function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double

% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double

% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function uitable2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%set(hObject, 'Data', cell(18,1));

% --- Executes during object creation, after setting all properties.
function uitable1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%set(hObject, 'Data', cell(5,1));

% --------------------------------------------------------------------
function uitable2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

