function varargout = arquitectonica1(varargin)
% ARQUITECTONICA1 MATLAB code for arquitectonica1.fig
%      ARQUITECTONICA1, by itself, creates a new ARQUITECTONICA1 or raises the existing
%      singleton*.
%
%      H = ARQUITECTONICA1 returns the handle to a new ARQUITECTONICA1 or the handle to
%      the existing singleton*.
%
%      ARQUITECTONICA1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARQUITECTONICA1.M with the given input arguments.
%
%      ARQUITECTONICA1('Property','Value',...) creates a new ARQUITECTONICA1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before arquitectonica1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to arquitectonica1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help arquitectonica1

% Last Modified by GUIDE v2.5 19-Feb-2017 20:38:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @arquitectonica1_OpeningFcn, ...
                   'gui_OutputFcn',  @arquitectonica1_OutputFcn, ...
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


% --- Executes just before arquitectonica1 is made visible.
function arquitectonica1_OpeningFcn(hObject, eventdata, handles, varargin)
%i=imread('claseabsorcion.png');
%image(i);
%axis off





% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to arquitectonica1 (see VARARGIN)

% Choose default command line output for arquitectonica1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes arquitectonica1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = arquitectonica1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function a250_Callback(hObject, eventdata, handles)
% hObject    handle to a250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%a1 = get(hObject,'string');

% Hints: get(hObject,'String') returns contents of a250 as text
%        str2double(get(hObject,'String')) returns contents of a250 as a double


% --- Executes during object creation, after setting all properties.
function a250_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a500_Callback(hObject, eventdata, handles)
% hObject    handle to a500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a500 as text
%        str2double(get(hObject,'String')) returns contents of a500 as a double


% --- Executes during object creation, after setting all properties.
function a500_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a1000_Callback(hObject, eventdata, handles)
% hObject    handle to a1000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a1000 as text
%        str2double(get(hObject,'String')) returns contents of a1000 as a double


% --- Executes during object creation, after setting all properties.
function a1000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ejecutar.
function ejecutar_Callback(hObject, eventdata, handles)
% hObject    handle to ejecutar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



parametrofrec=[0 0.8 1 1 1 0.9];

axes(handles.grafica);
semilogx(0,0);hold on
plot(parametrofrec,'--');%grafica predeterminada lleva punteado
grid on
ylabel('absorcion');
xlabel('Frencuencia Hz');


hold on

A0=get(handles.a125,'String');A1=get(handles.a250,'String');A2=get(handles.a500,'String');A3=get(handles.a1000,'String');A4=get(handles.a2000,'String');A5=get(handles.a4000,'String');
a0=str2num(A0);a1=str2num(A1);a2=str2num(A2);a3=str2num(A3);a4=str2num(A4);a5=str2num(A5);% obetener d elas entradas a tipo numerico

mater=[a0 a1 a2 a3 a4 a5]; %crear un vector en el que se guardan alfa de materiales
plot(handles.grafica,mater,'*');%material llevan asteriscos
Material=mater.*[0 1 1 1 1 1]; %vector , necesito el primer valor en 0


for n=0.05:0.05:3
    curvadesplazada=(parametrofrec-[0*n n n n n n])
    diferencia=Material-curvadesplazada
    
    matera1=(find(diferencia<0));%encuentro negativos
    matera1nuevo=diferencia(matera1);%nuevo vector
    sumatoria=sum(matera1nuevo);
    %cambio de signo
    a2=((-1).*sumatoria<=0.1)==0;
    
    if a2==0
        aw=curvadesplazada(3);
        break
    end
    
end
set(handles.aomega,'String',aw);
plot(handles.grafica,curvadesplazada,'-');% curva desplazada es continua

% clasificacion absorbente
clas='N/A';
if (aw==0.9)|(aw==0.95)|(aw==1)
    clas=('Clasificacion tipo A');
end
if (aw==0.8)|(aw==0.85)
    clas=('Clasificacion tipo B');
end
if (aw==0.6)|(aw==0.65)|(aw==0.7)|(aw==0.75)
    clas=('Clasificacion tipo C');
end
if (aw==0.3)|(aw==0.35)|(aw==0.4)|(aw==0.45)|(aw==0.5)|(aw==0.55)
    clas=('Clasificacion tipo D');
end
if (aw==0.25)|(aw==0.2)|(aw==0.15)
    clas=('Clasificacion tipo E');
end

set(handles.clasmat,'String',clas);





%indicador forma
f='N/A';
if diferencia(2)>1
    f='L';
end
if diferencia(4)>1
    f=('M');
end
if (diferencia(4)>1)|(diferencia(5)>1)
    f=('H');
end
set(handles.indforma,'String',f);










function a2000_Callback(hObject, eventdata, handles)
% hObject    handle to a2000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a2000 as text
%        str2double(get(hObject,'String')) returns contents of a2000 as a double


% --- Executes during object creation, after setting all properties.
function a2000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a2000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a4000_Callback(hObject, eventdata, handles)
% hObject    handle to a4000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a4000 as text
%        str2double(get(hObject,'String')) returns contents of a4000 as a double


% --- Executes during object creation, after setting all properties.
function a4000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a4000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a125_Callback(hObject, eventdata, handles)
% hObject    handle to a125 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a125 as text
%        str2double(get(hObject,'String')) returns contents of a125 as a double


% --- Executes during object creation, after setting all properties.
function a125_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a125 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function indicadorforma_Callback(hObject, eventdata, handles)
% hObject    handle to indicadorforma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of indicadorforma as text
%        str2double(get(hObject,'String')) returns contents of indicadorforma as a double


% --- Executes during object creation, after setting all properties.
function indicadorforma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to indicadorforma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
