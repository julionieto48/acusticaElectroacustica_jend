function varargout = TeoriaEstadistica1(varargin)
% TEORIAESTADISTICA1 MATLAB code for TeoriaEstadistica1.fig
%      TEORIAESTADISTICA1, by itself, creates a new TEORIAESTADISTICA1 or raises the existing
%      singleton*.
%
%      H = TEORIAESTADISTICA1 returns the handle to a new TEORIAESTADISTICA1 or the handle to
%      the existing singleton*.
%
%      TEORIAESTADISTICA1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEORIAESTADISTICA1.M with the given input arguments.
%
%      TEORIAESTADISTICA1('Property','Value',...) creates a new TEORIAESTADISTICA1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TeoriaEstadistica1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TeoriaEstadistica1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TeoriaEstadistica1

% Last Modified by GUIDE v2.5 04-Apr-2017 00:27:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TeoriaEstadistica1_OpeningFcn, ...
                   'gui_OutputFcn',  @TeoriaEstadistica1_OutputFcn, ...
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


% --- Executes just before TeoriaEstadistica1 is made visible.
function TeoriaEstadistica1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TeoriaEstadistica1 (see VARARGIN)

% Choose default command line output for TeoriaEstadistica1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TeoriaEstadistica1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TeoriaEstadistica1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in Construccion.
function Construccion_Callback(hObject, eventdata, handles)
% hObject    handle to Construccion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Construccion contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Construccion


% --- Executes during object creation, after setting all properties.
function Construccion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Construccion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox4.
function listbox4_Callback(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox4


% --- Executes during object creation, after setting all properties.
function listbox4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in matConstruc.
function matConstruc_Callback(hObject, eventdata, handles)

constrescogido=get(hObject,'Value');
strconstrescogido=get(hObject,'String');

escogido=strconstrescogido(constrescogido);%selecciono la posicion del string

set(handles.materialseleccionado,'String',escogido)


if strcmp(escogido,'N/A')==1
    set(handles.a_125,'String',0);
    set(handles.a_250,'String',0);
    set(handles.a_500,'String',0);
    set(handles.a_1000,'String',0);
    set(handles.a_2000,'String',0);
    set(handles.a_4000,'String',0);
    
elseif strcmp(escogido,'Ladrillo Pintado')==1
    set(handles.a_125,'String',0.012);
    set(handles.a_250,'String',0.014);
    set(handles.a_500,'String',0.017);
    set(handles.a_1000,'String',0.020);
    set(handles.a_2000,'String',0.023);
    set(handles.a_4000,'String',0.025);
 
    
elseif strcmp(escogido,'Bloque Hormigon')==1
    set(handles.a_125,'String',0.3);
    set(handles.a_250,'String',0.45);
    set(handles.a_500,'String',0.3);
    set(handles.a_1000,'String',0.25);
    set(handles.a_2000,'String',0.4);
    set(handles.a_4000,'String',0.25);
    
elseif strcmp(escogido,'Hormigon')==1
    set(handles.a_125,'String',0.01);
    set(handles.a_250,'String',0.012);
    set(handles.a_500,'String',0.02);
    set(handles.a_1000,'String',0.02);
    set(handles.a_2000,'String',0.023);
    set(handles.a_4000,'String',0.035);
elseif strcmp(escogido,'Hormigon Enlucido')==1
    set(handles.a_125,'String',0.004);
    set(handles.a_250,'String',0.004);
    set(handles.a_500,'String',0.005);
    set(handles.a_1000,'String',0.006);
    set(handles.a_2000,'String',0.008);
    set(handles.a_4000,'String',0.015);   
        
end
% hObject    handle to matConstruc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns matConstruc contents as cell array
%        contents{get(hObject,'Value')} returns selected item from matConstruc


% --- Executes during object creation, after setting all properties.
function matConstruc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to matConstruc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)




% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function arean_Callback(hObject, eventdata, handles)
% hObject    handle to arean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of arean as text
%        str2double(get(hObject,'String')) returns contents of arean as a double


% --- Executes during object creation, after setting all properties.
function arean_CreateFcn(hObject, eventdata, handles)
% hObject    handle to arean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ver.
function ver_Callback(hObject, eventdata, handles)

%Para materiales de construccion







% --- Executes on button press in agregar.
function agregar_Callback(hObject, eventdata, handles)
areasuperficie=get(handles.arean,'String');areasuperficie=str2num(areasuperficie);

A125=get(handles.a_125,'String');A250=get(handles.a_250,'String');A500=get(handles.a_500,'String');
A1000=get(handles.a_1000,'String');A2000=get(handles.a_2000,'String');A4000=get(handles.a_4000,'String');
a125=str2num(A125);a250=str2num(A250);a500=str2num(A500);a1000=str2num(A1000);a2000=str2num(A2000);a4000=str2num(A4000);

absf=areasuperficie.*[a125 a250 a500 a1000 a2000 a4000];
absf=num2str(absf);
set(handles.controlabsf,'String',absf)
%set(handles.resultados1,'String',absf);
%set(handles.resultados,'data',absf);

%Escribir en nuevos elemntos del listbox
a=get(handles.controlabsf,'String');
data_par=a;
old_data= get(handles.resultados1,'String');
new_data=strvcat(old_data,data_par);
set(handles.resultados1,'String',new_data)



%data_part=absf
%old_data= get(handles.resultados,'data')
%new_data=strvcat(old_data,data_part)
%set(handles.resultados,'data',new_data)



%data= get(handles.resultados,'data');
%data(end+1,:)=absf
%set(handles.resultados,'data',absf);

% superficie total

supsubn=get(handles.arean,'String');supsubn=str2num(supsubn);
set(handles.supcontrol,'String',supsubn);%funciona a su vez como un control
    
sup_parcial=get(handles.supcontrol,'String');sup_parcial=str2num(sup_parcial)

suptot=sup_parcial
set(handles.suptotal,'String',suptot)






%b=str2num(supsubn)
%sup_parcial=b
%old_sup=get(handles.suptotal,'String')
%new_sup= old_sup+sup_parcial
%set(handles.suptotal,'String',new_sup);



% --- Executes on selection change in resultados.
function resultados_Callback(hObject, eventdata, handles)
% hObject    handle to resultados (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns resultados contents as cell array
%        contents{get(hObject,'Value')} returns selected item from resultados


% --- Executes during object creation, after setting all properties.
function resultados_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultados (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in resultados1.
function resultados1_Callback(hObject, eventdata, handles)
% hObject    handle to resultados1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns resultados1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from resultados1


% --- Executes during object creation, after setting all properties.
function resultados1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultados1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcular.
function calcular_Callback(hObject, eventdata, handles)



% hObject    handle to calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in limpiar.
function limpiar_Callback(hObject, eventdata, handles)
set(handles.resultados1,'String',[]);
set(handles.supcontrol,'String', 'N/A');
set(handles.suptotal,'String','N/A');
set(handles.controlabsf,'String','N/A');
clc
clear all

% hObject    handle to limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
