function varargout = nfuentespatronpolar(varargin)
% NFUENTESPATRONPOLAR MATLAB code for nfuentespatronpolar.fig
%      NFUENTESPATRONPOLAR, by itself, creates a new NFUENTESPATRONPOLAR or raises the existing
%      singleton*.
%
%      H = NFUENTESPATRONPOLAR returns the handle to a new NFUENTESPATRONPOLAR or the handle to
%      the existing singleton*.
%
%      NFUENTESPATRONPOLAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NFUENTESPATRONPOLAR.M with the given input arguments.
%
%      NFUENTESPATRONPOLAR('Property','Value',...) creates a new NFUENTESPATRONPOLAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before nfuentespatronpolar_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to nfuentespatronpolar_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help nfuentespatronpolar

% Last Modified by GUIDE v2.5 07-Sep-2018 16:03:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @nfuentespatronpolar_OpeningFcn, ...
    'gui_OutputFcn',  @nfuentespatronpolar_OutputFcn, ...
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


% --- Executes just before nfuentespatronpolar is made visible.
function nfuentespatronpolar_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to nfuentespatronpolar (see VARARGIN)

% Choose default command line output for nfuentespatronpolar
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes nfuentespatronpolar wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = nfuentespatronpolar_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ampl_Callback(hObject, eventdata, handles)
% hObject    handle to ampl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ampl as text
%        str2double(get(hObject,'String')) returns contents of ampl as a double


% --- Executes during object creation, after setting all properties.
function ampl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function phase_Callback(hObject, eventdata, handles)
% hObject    handle to phase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of phase as text
%        str2double(get(hObject,'String')) returns contents of phase as a double

% --- Executes during object creation, after setting all properties.
function phase_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function lambdafactor_Callback(hObject, eventdata, handles)
% hObject    handle to lambdafactor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lambdafactor as text
%        str2double(get(hObject,'String')) returns contents of lambdafactor as a double


% --- Executes during object creation, after setting all properties.
function lambdafactor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lambdafactor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushtabla.
function pushtabla_Callback(hObject, eventdata, handles)
numerodefilas = str2num(get(handles.numerofuentes,'string'));

set(handles.uitable1,'Data',cell(numerodefilas,4));

% hObject    handle to pushtabla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function numerofuentes_Callback(hObject, eventdata, handles)
% hObject    handle to numerofuentes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numerofuentes as text
%        str2double(get(hObject,'String')) returns contents of numerofuentes as a double


% --- Executes during object creation, after setting all properties.
function numerofuentes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numerofuentes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ejecutargrafica.
function ejecutargrafica_Callback(hObject, eventdata, handles)
f = 1e3; lamda = 343/f; k = (2*pi*f)/343;
d = str2num(get(handles.edit5,'string'))*lamda

n = str2num(get(handles.numerofuentes,'string'));%num de fuentes
deltas_r = [];

matriz_datos = cell2mat(get(handles.uitable1, 'data'));
amp = matriz_datos(:,1);
matriz_datos(:,2)
fases = deg2rad(matriz_datos(:,2))
theta = 0:0.01:2*pi;
cont = 0;

if mod(n,2) %impares
    for o = 0:n
        dr_impar = (o+1)*d;
        deltas_r(o+1) = dr_impar;
    end
    deltas_r = horzcat(0,deltas_r(1:n/2));
    deltas_r = horzcat(flip(deltas_r(2:end)),-deltas_r);
    
    for j=1:(n-1)/2
        fases(j)
        cont = amp(j).*exp(1i*(k*deltas_r(j).*sin(theta)+fases(j)));
        vec{j} = cont;
    end
    for j=2+(n-1)/2:n
        fases(j)
        cont = amp(j).*exp(1i*(k*deltas_r(j).*sin(theta)-fases(j)));
        vec2{j} = cont;
    end
    vec3 = amp(1+(n-1)/2).*exp(-1i*fases(1+(n-1)/2));
    vec = horzcat(vec,vec2)
    p_r = (sum(cell2mat(vec')))+vec3;
else   %pares
    for o = 0:n
        dr_par = (2*o+1)*d/2;
        deltas_r(o+1) = dr_par;
    end
    deltas_r = deltas_r(1:n/2);
    deltas_r = horzcat(flip(deltas_r),-deltas_r);
    
    for j=1:n/2
        fases(j)
        cont = amp(j).*exp(1i*(k*deltas_r(j).*sin(theta)+fases(j)));
        vec{j} = cont;
    end
    for j=1:n
        fases(j)
        cont = amp(j).*exp(1i*(k*deltas_r(j).*sin(theta)-fases(j)));
        vec2{j} = cont;
    end
    vec = horzcat(vec,vec2((length(vec2)+1)/2:end));
    p_r = (sum(cell2mat(vec')));
end

axes(handles.axes1);
polar(theta,abs(p_r));
title('$${P(\theta) [Pa]}$$', ...
  'Interpreter', 'Latex','fontsize',16)

axes(handles.axes2);
polar(theta,20*log10((p_r)/(20e-6)));
title('$${P(\theta) [dB_{SPL}]}$$', ...
  'Interpreter', 'Latex','fontsize',16)


% hObject    handle to ejecutargrafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
