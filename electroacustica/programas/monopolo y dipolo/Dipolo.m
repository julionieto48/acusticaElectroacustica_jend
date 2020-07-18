function varargout = Dipolo(varargin)
% DIPOLO MATLAB code for Dipolo.fig
%      DIPOLO, by itself, creates a new DIPOLO or raises the existing
%      singleton*.
%
%      H = DIPOLO returns the handle to a new DIPOLO or the handle to
%      the existing singleton*.
%
%      DIPOLO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIPOLO.M with the given input arguments.
%
%      DIPOLO('Property','Value',...) creates a new DIPOLO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Dipolo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Dipolo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Dipolo

% Last Modified by GUIDE v2.5 01-Sep-2018 23:10:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Dipolo_OpeningFcn, ...
                   'gui_OutputFcn',  @Dipolo_OutputFcn, ...
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


% --- Executes just before Dipolo is made visible.
function Dipolo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Dipolo (see VARARGIN)

% Choose default command line output for Dipolo
handles.output = hObject;
graficapredet(handles)
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Dipolo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Dipolo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA
theta = 0:0.01:2*pi;
f = get(handles.slider1, 'Value')
k = (2*pi*f)/340,
%d = (340/f)*get(handles.slider2, 'Value')
d = (340/f)*str2num(get(handles.edit1, 'String'))
set(handles.text8,'String',d);
rho_0 = 0.9;

% a = str2num(get(handles.edit2,'String'));
% u = str2num(get(handles.edit1,'String'))
% s = 4*pi*a.^2;
% U = s*u;
%p_Teta = abs(2*i*sin((k/2)*d.*sin(theta)));
opc = get(handles.uipanel1,'SelectedObject')
config = get(opc,'String')
switch config
    case '+ +'
        p_Teta = abs(exp(i*(k/2)*d.*sin(theta))+exp(-i*(k/2)*d.*sin(theta)));
    case '+ -'
        p_Teta = abs(exp(i*(k/2)*d.*sin(theta))-exp(-i*(k/2)*d.*sin(theta)));
    case '- +'
        p_Teta = abs(-exp(i*(k/2)*d.*sin(theta))+exp(-i*(k/2)*d.*sin(theta)));
    case '- -'
        p_Teta = abs(-exp(i*(k/2)*d.*sin(theta))-exp(-i*(k/2)*d.*sin(theta)));   
end 
p_Teta = abs(exp(i*(k/2)*d.*sin(theta))+1-exp(-i*(k/2)*d.*sin(theta)))
p_Teta_dB = 20*log10(p_Teta./(20e-6));
abs(exp(i*(k/2)*d.*sin(pi/4))-exp(-i*(k/2)*d.*sin(pi/4)))
%polar(theta,p_Teta, 'Parent',handles.axes1)
axes(handles.axes2)
polar(theta(1:length(theta)/2),p_Teta(1:length(theta)/2))
hold on
polar(theta(length(theta)/2:end),p_Teta(length(theta)/2:end),'r')
title('P[\theta] [Pa]','FontSize', 12) 

axes(handles.axes1)
polar(theta(1:length(theta)/2),p_Teta_dB(1:length(theta)/2))
title('P[\theta] [dB_{SPL}]','FontSize', 12) 
hold on
polar(theta(length(theta)/2:end),p_Teta_dB(length(theta)/2:end),'r')


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
%set(handleToSlider, 'SliderStep', [0 , 10]);
set(handles.text3,'String',get(hObject,'Value'))
set(hObject,'Min',0)
set(hObject,'Max',20000)



% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.text4,'String',get(hObject,'Value'))
set(hObject,'Min',0)
set(hObject,'Max',10)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
auxLimpiar(handles)

function auxLimpiar(handles)
axes(handles.axes1); cla reset; graficapredet(handles)
axes(handles.axes2); cla reset; graficapredet(handles)

function graficapredet(handles)
axes(handles.axes1); polar(0,0); title('P[\theta] [dB_{SPL}]','FontSize', 12) 
axes(handles.axes2); polar(0,0); title('P[\theta] [Pa]','FontSize', 12) 

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
