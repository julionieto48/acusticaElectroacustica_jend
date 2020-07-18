function varargout = arquitectonicaserio2(varargin)
% ARQUITECTONICASERIO2 MATLAB code for arquitectonicaserio2.fig
%      ARQUITECTONICASERIO2, by itself, creates a new ARQUITECTONICASERIO2 or raises the existing
%      singleton*.
%
%      H = ARQUITECTONICASERIO2 returns the handle to a new ARQUITECTONICASERIO2 or the handle to
%      the existing singleton*.
%
%      ARQUITECTONICASERIO2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARQUITECTONICASERIO2.M with the given input arguments.
%
%      ARQUITECTONICASERIO2('Property','Value',...) creates a new ARQUITECTONICASERIO2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before arquitectonicaserio2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to arquitectonicaserio2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help arquitectonicaserio2

% Last Modified by GUIDE v2.5 05-Apr-2017 08:34:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @arquitectonicaserio2_OpeningFcn, ...
                   'gui_OutputFcn',  @arquitectonicaserio2_OutputFcn, ...
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


% --- Executes just before arquitectonicaserio2 is made visible.
function arquitectonicaserio2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to arquitectonicaserio2 (see VARARGIN)

% Choose default command line output for arquitectonicaserio2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes arquitectonicaserio2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = arquitectonicaserio2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in moqueta.
function moqueta_Callback(hObject, eventdata, handles)
content= get(hObject,'String');%lista string
matesco=get(hObject,'Value'); %obtener posicion
mostrar=content(matesco);%obtengo un string de acuerdo a la posicio
set(handles.posic,'String',mostrar);

% --- Executes during object creation, after setting all properties.
function moqueta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to moqueta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in construccion.
function construccion_Callback(hObject, eventdata, handles)
%obtener seleccion del usuario por material y tener una referencia en el
%text

content= get(hObject,'String');%lista string
matesco=get(hObject,'Value'); %obtener posicion
mostrar=content(matesco);%obtengo un string de acuerdo a la posicio
set(handles.posic,'String',mostrar);


% hObject    handle to construccion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function construccion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to construccion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Objeto.
function Objeto_Callback(hObject, eventdata, handles)
content= get(hObject,'String');%lista string
matesco=get(hObject,'Value'); %obtener posicion
mostrar=content(matesco);%obtengo un string de acuerdo a la posicio
set(handles.posic,'String',mostrar);




% --- Executes during object creation, after setting all properties.
function Objeto_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Objeto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in especial.
function especial_Callback(hObject, eventdata, handles)
content= get(hObject,'String');%lista string
matesco=get(hObject,'Value'); %obtener posicion
mostrar=content(matesco);%obtengo un string de acuerdo a la posicio
set(handles.posic,'String',mostrar);

% --- Executes during object creation, after setting all properties.
function especial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to especial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function materiales_CreateFcn(hObject, eventdata, handles)
% hObject    handle to materiales (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when materiales is resized.
function materiales_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to materiales (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected object is changed in grupomateriales.
function grupomateriales_SelectionChangedFcn(hObject, eventdata, handles)
%seleccion de radio button segun su posicion evaluada en static text
%matescogido
%valor=0;
if hObject== handles.uno
    set(handles.matescogido,'String','Construccion');
    %valor=get(hObject,'Value');
elseif hObject== handles.dos
    set(handles.matescogido,'String','Moquetas y cortinas');
    %valor=get(hObject,'Value');
elseif hObject== handles.tres
    set(handles.matescogido,'String','Objetos');
    %valor=get(hObject,'Value');
    
elseif hObject== handles.cuatro
    set(handles.matescogido,'String','Materiales especiales');
    %valor=get(hObject,'Value');
   
end

%pasar=mat2str(valor)

    






% --- Executes on button press in uno.
function uno_Callback(hObject, eventdata, handles)
% hObject    handle to uno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of uno


% --- Executes on button press in dos.
function dos_Callback(hObject, eventdata, handles)
% hObject    handle to dos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of dos


% --- Executes on button press in tres.
function tres_Callback(hObject, eventdata, handles)
% hObject    handle to tres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tres


% --- Executes on button press in cuatro.
function cuatro_Callback(hObject, eventdata, handles)
% hObject    handle to cuatro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cuatro


% --- Executes when selected object is changed in uibuttongroup2.
function uibuttongroup2_SelectionChangedFcn(hObject, eventdata, handles)

%dado que s epueden escoger 5 superficies hay un seleccionador button para
%saber en cual se va a trabajar
if hObject== handles.primero
    set(handles.posicionador,'String','a1');
    
    
elseif hObject== handles.segundo
    set(handles.posicionador,'String','a2');
   
elseif hObject== handles.tercero
    set(handles.posicionador,'String','a3');
    
elseif hObject== handles.cuarto
    set(handles.posicionador,'String','a4');
    
elseif hObject== handles.quinto
    set(handles.posicionador,'String','a5');
    
    

end








% --- Executes on button press in primero.
function primero_Callback(hObject, eventdata, handles)
% hObject    handle to primero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of primero


% --- Executes on button press in agregarmaterial.
function agregarmaterial_Callback(hObject, eventdata, handles)

%boton push en el cual de acuerdo a tipo de material y  material se
%almacenan datos en los static text 9-14
%evaluar posic y matescogido

evaluador1=get(handles.posic,'String');
evaluador2=get(handles.matescogido,'String');
coef=[0 0 0 0 0 0];


if (strcmp(evaluador1,'Ladrillo'))&& (strcmp(evaluador2,'Construccion'))
    coef=[0.12 0.14 0.17 0.20 0.23 0.25];
    
elseif (strcmp(evaluador1,'Hormigon'))&& (strcmp(evaluador2,'Construccion'))
    coef=[0.3 0.45 0.3 0.25 0.4 0.25];
    
end

if (strcmp(evaluador1,'Terciopelo Liso'))&& (strcmp(evaluador2,'Moquetas y cortinas'))
    coef=[0.05 0.12 0.35 0.45 0.38 0];
elseif(strcmp(evaluador1,'Alfombra Goma'))&& (strcmp(evaluador2,'Moquetas y cortinas'))
    coef=[0.04 0.04 0.08 0.12 0.03 0.1];
    
end

if strcmp(evaluador1,'Vidrio de Espejo')&& (strcmp(evaluador2,'Objetos'))
    coef=[0.035 0.025 0.019 0.012 0.07 0.04];
    
end

if (strcmp(evaluador1,'Corcho Aglomerado'))&& (strcmp(evaluador2,'Materiales especiales'))
    coef=[0.12 0.28 0.85 0.82 0.78 0];
elseif(strcmp(evaluador1,'Fibra de Vidrio'))&& (strcmp(evaluador2,'Materiales especiales'))
    coef=[0.32 0.46 0.66 0.7 0.69 0];
    
end
%edicion de las ventanas de texto

pos1=coef(1);set(handles.text9,'String',pos1);
pos2=coef(2);set(handles.text10,'String',pos2);
pos3=coef(3);set(handles.text11,'String',pos3);
pos4=coef(4);set(handles.text12,'String',pos4);
pos5=coef(5);set(handles.text13,'String',pos5);
pos6=coef(6);set(handles.text14,'String',pos6);





% --- Executes on button press in ponertabla.
function ponertabla_Callback(hObject, eventdata, handles)
a=get(handles.posicionador,'String');%elemento al cual sera agregado
c1=get(handles.text9,'String');C1=str2double(c1);c2=get(handles.text10,'String');C2=str2double(c2);c3=get(handles.text11,'String');C3=str2double(c3);
c4=get(handles.text12,'String');C4=str2double(c4);c5=get(handles.text13,'String');C5=str2double(c5);c6=get(handles.text14,'String');C6=str2double(c6);
%vectorcoefstr=[c1 c2 c3 c4 c5 c5];
vectorcoefnum=[C1 C2 C3 C4 C5 C6];
%posicionmaterial=zeros(5,1);

if strcmp(a,'a1')
    %coefs1=vectorcoefstr;
    set(handles.text45,'String',c1);set(handles.text46,'String',c2);set(handles.text47,'String',c3);set(handles.text48,'String',c4);
    set(handles.text49,'String',c5);set(handles.text50,'String',c6);
    
    set(handles.vectors1,'String',vectorcoefnum)
        
elseif strcmp(a,'a2')
    %coefs2=[zeros(1,6); vectorcoefstr];
    set(handles.text51,'String',c1);set(handles.text52,'String',c2);set(handles.text53,'String',c3);set(handles.text54,'String',c4);
    set(handles.text55,'String',c5);set(handles.text56,'String',c6);   
    
    set(handles.vectors2,'String',vectorcoefnum);
elseif strcmp(a,'a3')
    %coefs3=[zeros(1,6); zeros(1,6); vectorcoefstr];
    set(handles.text57,'String',c1);set(handles.text58,'String',c2);set(handles.text59,'String',c3);set(handles.text60,'String',c4);
    set(handles.text61,'String',c5);set(handles.text62,'String',c6);
    
    set(handles.vectors3,'String',vectorcoefnum);
elseif strcmp(a,'a4')
    %coefs4=[zeros(1,6); zeros(1,6);zeros(1,6);vectorcoefstr];
    set(handles.text63,'String',c1);set(handles.text64,'String',c2);set(handles.text65,'String',c3);set(handles.text66,'String',c4);
    set(handles.text67,'String',c5);set(handles.text68,'String',c6);
    
    set(handles.vectors4,'String',vectorcoefnum);
elseif strcmp(a,'a5')
    %coefs5=[zeros(1,6);zeros(1,6);zeros(1,6);zeros(1,6); vectorcoefstr];
    set(handles.text69,'String',c1);set(handles.text70,'String',c2);set(handles.text71,'String',c3);set(handles.text72,'String',c4);
    set(handles.text73,'String',c5);set(handles.text74,'String',c6);
    
    set(handles.vectors5,'String',vectorcoefnum);
    
end
%coef=[coefs1;coefs2;coefs3;coefs4;coefs5];
%set(handles.uitable2,'data',coef);

% hObject    handle to ponertabla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in vectornulo.
function vectornulo_Callback(hObject, eventdata, handles)
% hObject    handle to vectornulo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on agregarmaterial and none of its controls.
function agregarmaterial_KeyPressFcn(hObject, eventdata, handles)


% hObject    handle to agregarmaterial (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function uipanel4_CreateFcn(hObject, eventdata, handles)
%operacion de las areas

function area1_Callback(hObject, eventdata, handles)
% hObject    handle to area1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area1 as text
%        str2double(get(hObject,'String')) returns contents of area1 as a double


% --- Executes during object creation, after setting all properties.
function area1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area2_Callback(hObject, eventdata, handles)
% hObject    handle to area2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area2 as text
%        str2double(get(hObject,'String')) returns contents of area2 as a double


% --- Executes during object creation, after setting all properties.
function area2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area3_Callback(hObject, eventdata, handles)
% hObject    handle to area3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area3 as text
%        str2double(get(hObject,'String')) returns contents of area3 as a double


% --- Executes during object creation, after setting all properties.
function area3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area4_Callback(hObject, eventdata, handles)
% hObject    handle to area4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area4 as text
%        str2double(get(hObject,'String')) returns contents of area4 as a double


% --- Executes during object creation, after setting all properties.
function area4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area5_Callback(hObject, eventdata, handles)
% hObject    handle to area5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area5 as text
%        str2double(get(hObject,'String')) returns contents of area5 as a double


% --- Executes during object creation, after setting all properties.
function area5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
a1=get(handles.area1,'String');A1=str2double(a1);
a2=get(handles.area2,'String');A2=str2double(a2);
a3=get(handles.area3,'String');A3=str2double(a3);
a4=get(handles.area4,'String');A4=str2double(a4);
a5=get(handles.area5,'String');A5=str2double(a5);
areatotal=A1+A2+A3+A4+A5;set(handles.superficietot,'String',areatotal);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
%hace la operacion de acuerdo a las areas y  a los coeficientes
% operacion area total obteniendo ingresos por area
sup1=get(handles.area1,'String');sup2=get(handles.area2,'String');sup3=get(handles.area3,'String');sup4=get(handles.area4,'String');sup5=get(handles.area5,'String');
Sup1=str2double(sup1);Sup2=str2double(sup2);Sup3=str2double(sup3);Sup4=str2double(sup4);Sup5=str2double(sup5);
Suptotal=Sup1+Sup2+Sup3+Sup4+Sup5;
set(handles.superficietot,'String',Suptotal)


%vectores coeficientes
c1v1=get(handles.text45,'String');c2v1=get(handles.text46,'String');c3v1=get(handles.text47,'String');c4v1=get(handles.text48,'String');
c5v1=get(handles.text49,'String');c6v1=get(handles.text50,'String');
C1V1=str2double(c1v1);C2V1=str2double(c2v1);C3V1=str2double(c3v1);C4V1=str2double(c4v1);C5V1=str2double(c5v1);C6V1=str2double(c6v1);
coefs1=[C1V1 C2V1 C3V1 C4V1 C5V1 C6V1 ];

c1v2=get(handles.text51,'String');c2v2=get(handles.text52,'String');c3v2=get(handles.text53,'String');c4v2=get(handles.text54,'String');
c5v2=get(handles.text55,'String');c6v2=get(handles.text56,'String');
C1V2=str2double(c1v2);C2V2=str2double(c2v2);C3V2=str2double(c3v2);C4V2=str2double(c4v2);C5V2=str2double(c5v2);C6V2=str2double(c6v2);
coefs2=[C1V2 C2V2 C3V2 C4V2 C5V2 C6V2 ];

c1v3=get(handles.text57,'String');c2v3=get(handles.text58,'String');c3v3=get(handles.text59,'String');c4v3=get(handles.text60,'String');
c5v3=get(handles.text61,'String');c6v3=get(handles.text62,'String');
C1V3=str2double(c1v3);C2V3=str2double(c2v3);C3V3=str2double(c3v3);C4V3=str2double(c4v3);C5V3=str2double(c5v3);C6V3=str2double(c6v3);
coefs3=[C1V3 C2V3 C3V3 C4V3 C5V3 C6V3 ];

c1v4=get(handles.text63,'String');c2v4=get(handles.text64,'String');c3v4=get(handles.text65,'String');c4v4=get(handles.text66,'String');
c5v4=get(handles.text67,'String');c6v4=get(handles.text68,'String');
C1V4=str2double(c1v4);C2V4=str2double(c2v4);C3V4=str2double(c3v4);C4V4=str2double(c4v4);C5V4=str2double(c5v4);C6V4=str2double(c6v4);
coefs4=[C1V4 C2V4 C3V4 C4V4 C5V4 C6V4 ];

c1v5=get(handles.text63,'String');c2v5=get(handles.text64,'String');c3v5=get(handles.text65,'String');c4v5=get(handles.text66,'String');
c5v5=get(handles.text67,'String');c6v5=get(handles.text68,'String');
C1V5=str2double(c1v5);C2V5=str2double(c2v5);C3V5=str2double(c3v5);C4V5=str2double(c4v5);C5V5=str2double(c5v5);C6V5=str2double(c6v5);
coefs5=[C1V5 C2V5 C3V5 C4V5 C5V5 C6V5];



%multiplicacion coeficientes con areas
absmat1=coefs1*Sup1;absmat2=coefs2*Sup2;absmat3=coefs3*Sup3;absmat4=coefs4*Sup4;absmat5=coefs5*Sup5;
%vectmultip1=(a1*AR1);vectmultip2=(a2*AR2);vectmultip3=(a3*AR3);vectmultip4=(a4*AR4);vectmultip5=(a5*AR5);

% ABS por banda
ABS125=absmat1(1)+absmat2(1)+absmat3(1)+absmat4(1)+absmat5(1);
set(handles.abs125,'String',ABS125);

ABS250=absmat1(2)+absmat2(2)+absmat3(2)+absmat4(2)+absmat5(2);
set(handles.abs250,'String',ABS250);

ABS500=absmat1(3)+absmat2(3)+absmat3(3)+absmat4(3)+absmat5(3);
set(handles.abs500,'String',ABS500);

ABS1000=absmat1(4)+absmat2(4)+absmat3(4)+absmat4(4)+absmat5(4);
set(handles.abs1000,'String',ABS1000);

ABS2000=absmat1(5)+absmat2(5)+absmat3(5)+absmat4(5)+absmat5(5);
set(handles.abs2000,'String',ABS2000);

ABS4000=absmat1(6)+absmat2(6)+absmat3(6)+absmat4(6)+absmat5(6);
set(handles.abs4000,'String',ABS4000);

% ABStotal suma e abs por banda

ABSto=ABS125+ABS250+ABS500+ABS1000+ABS2000+ABS4000;%suma de abs
set(handles.abstotal,'String',ABSto);



%ABS125=vectmultip1(1)+vectmultip2(1)+vectmultip1(1)+vectmultip2(1)+vectmultip1(1);
% ABS ponderador por banda tomo el abs por banda y lo divido en la
% superficie total

pabs125=ABS125/(Suptotal);pabs250=ABS250/(Suptotal);pabs500=ABS500/(Suptotal);
pabs1000=ABS1000/(Suptotal);pabs2000=ABS2000/(Suptotal);pabs4000=ABS4000/(Suptotal);

set(handles.absp125,'String',pabs125);set(handles.absp250,'String',pabs250);
set(handles.absp500,'String',pabs500);set(handles.absp1000,'String',pabs1000);set(handles.absp2000,'String',pabs2000);set(handles.absp4000,'String',pabs4000);

% ABSmedio ponderado

ABSmid=(pabs500+pabs1000)/(2);
set(handles.absmid,'String',ABSmid);



function We_Callback(hObject, eventdata, handles)
% hObject    handle to We (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of We as text
%        str2double(get(hObject,'String')) returns contents of We as a double


% --- Executes during object creation, after setting all properties.
function We_CreateFcn(hObject, eventdata, handles)
% hObject    handle to We (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function miu_Callback(hObject, eventdata, handles)
% hObject    handle to miu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of miu as text
%        str2double(get(hObject,'String')) returns contents of miu as a double


% --- Executes during object creation, after setting all properties.
function miu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to miu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Q_Callback(hObject, eventdata, handles)
% hObject    handle to Q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Q as text
%        str2double(get(hObject,'String')) returns contents of Q as a double


% --- Executes during object creation, after setting all properties.
function Q_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in campolibre.
function campolibre_Callback(hObject, eventdata, handles)

we=get(handles.We,'String');we=str2num(we);
n=get(handles.miu,'String');n=str2num(n);
wa=we*n;% la netrada de n es el porcentaje en decimal
set(handles.Wa,'String',wa);
q=get(handles.Q,'String');q=str2num(q);
r=get(handles.r,'String');r=str2num(r);
spl=120+(10*log10(wa))+10*log10((q/(4*pi*(r^2))));
set(handles.SPL,'String',spl);



% hObject    handle to campolibre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function r_Callback(hObject, eventdata, handles)
% hObject    handle to rsala (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rsala as text
%        str2double(get(hObject,'String')) returns contents of rsala as a double


% --- Executes during object creation, after setting all properties.
function r_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rsala (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in salacalculo.
function salacalculo_Callback(hObject, eventdata, handles)
l=get(handles.L,'String');l=str2num(l);w=get(handles.W,'String');w=str2num(w);
h=get(handles.H,'String');h=str2num(h);
suptot=(l*w*2)+(l*h*2)+(w*h*2);set(handles.st,'String',suptot);

%alfamid=get(handles.absmid,'String');alfamid=str2num(alfamid); %alfamid con el programa anterior
alfamid=get(handles.amid,'String');alfamid=str2num(alfamid)
suptot=get(handles.st,'String');suptot=str2num(suptot)
ABS=alfamid*suptot;
R=ABS/(1-alfamid);
set(handles.Rsala,'String',R);

we=get(handles.We,'String');we=str2num(we);
n=get(handles.miu,'String');n=str2num(n);
wa=we*n;% la netrada de n es el porcentaje en decimal
set(handles.Wa,'String',wa);
q=get(handles.Q,'String');q=str2num(q);
r=get(handles.r,'String');r=str2num(r);
spl=120+(10*log10(wa))+10*log10((q/(4*pi*(r^2))) +(4/R) );
set(handles.splsala,'String',spl);



% hObject    handle to salacalculo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function L_Callback(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L as text
%        str2double(get(hObject,'String')) returns contents of L as a double


% --- Executes during object creation, after setting all properties.
function L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W_Callback(hObject, eventdata, handles)
% hObject    handle to W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W as text
%        str2double(get(hObject,'String')) returns contents of W as a double


% --- Executes during object creation, after setting all properties.
function W_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function H_Callback(hObject, eventdata, handles)
% hObject    handle to H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H as text
%        str2double(get(hObject,'String')) returns contents of H as a double


% --- Executes during object creation, after setting all properties.
function H_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function amid_Callback(hObject, eventdata, handles)
% hObject    handle to amid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amid as text
%        str2double(get(hObject,'String')) returns contents of amid as a double


% --- Executes during object creation, after setting all properties.
function amid_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function directividadq_Callback(hObject, eventdata, handles)
% hObject    handle to directividadq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of directividadq as text
%        str2double(get(hObject,'String')) returns contents of directividadq as a double


% --- Executes during object creation, after setting all properties.
function directividadq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to directividadq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculodistancias.
function calculodistancias_Callback(hObject, eventdata, handles)

Q=get(handles.directividadq,'String');Q=str2num(Q);
alfamidprom=get(handles.amid,'String');alfamidprom=str2num(alfamidprom);
% calculo de diferentes R

ABS125=get(handles.abs125,'String');ABS125=str2num(ABS125);R125=ABS125/(1-alfamidprom);
set(handles.r125,'String',R125);

ABS250=get(handles.abs250,'String');ABS250=str2num(ABS250);R250=ABS250/(1-alfamidprom);
set(handles.r250,'String',R250);

ABS500=get(handles.abs500,'String');ABS500=str2num(ABS500);R500=ABS500/(1-alfamidprom);
set(handles.r500,'String',R500);


ABS1000=get(handles.abs1000,'String');ABS1000=str2num(ABS1000);R1000=ABS1000/(1-alfamidprom);
set(handles.r1000,'String',R1000);

ABS2000=get(handles.abs2000,'String');ABS2000=str2num(ABS2000);R2000=ABS2000/(1-alfamidprom);
set(handles.r2000,'String',R2000);

ABS4000=get(handles.abs4000,'String');ABS4000=str2num(ABS4000);R4000=ABS4000/(1-alfamidprom);
set(handles.r4000,'String',R4000);


ABSt=get(handles.abstotal,'String');ABSt=str2num(ABSt);Rtot=ABSt/(1-alfamidprom);
set(handles.rtoti,'String',Rtot);

% calculo de distancia

dc125=0.14*sqrt(Q*R125);set(handles.df125,'String',dc125);
dc250=0.14*sqrt(Q*R250);set(handles.df250,'String',dc250);
dc500=0.14*sqrt(Q*R500);set(handles.df500,'String',dc500);
dc1000=0.14*sqrt(Q*R1000);set(handles.df1000,'String',dc1000);
dc2000=0.14*sqrt(Q*R2000);set(handles.df2000,'String',dc2000);
dc4000=0.14*sqrt(Q*R4000);set(handles.df4000,'String',dc4000);
dctot=0.14*sqrt(Q*Rtot);set(handles.dftoti,'String',dctot);


%_en los  promediados_

% para los r 

ABSp125=get(handles.absp125,'String');ABSp125=str2num(ABSp125);Rp125=ABSp125/(1-alfamidprom);
set(handles.rp125,'String',Rp125);


ABSp250=get(handles.absp250,'String');ABSp250=str2num(ABSp250);Rp250=ABSp250/(1-alfamidprom);
set(handles.rp250,'String',Rp250);

ABSp500=get(handles.absp500,'String');ABSp500=str2num(ABSp500);Rp500=ABSp500/(1-alfamidprom);
set(handles.rp500,'String',Rp500);

ABSp1000=get(handles.absp1000,'String');ABSp1000=str2num(ABSp1000);Rp1000=ABSp1000/(1-alfamidprom);
set(handles.rp1000,'String',Rp1000);


ABSp2000=get(handles.absp2000,'String');ABSp2000=str2num(ABSp2000);Rp2000=ABSp2000/(1-alfamidprom);
set(handles.rp2000,'String',Rp2000);

ABSp4000=get(handles.absp4000,'String');ABSp4000=str2num(ABSp4000);Rp4000=ABSp4000/(1-alfamidprom);
set(handles.rp4000,'String',Rp4000);

% en las distancias

dcp125=0.14*sqrt(Q*Rp125);set(handles.dpf125,'String',dcp125);
dcp250=0.14*sqrt(Q*Rp250);set(handles.dpf250,'String',dcp250);
dcp500=0.14*sqrt(Q*Rp500);set(handles.dpf500,'String',dcp500);
dcp1000=0.14*sqrt(Q*Rp1000);set(handles.dpf1000,'String',dcp1000);
dcp2000=0.14*sqrt(Q*Rp2000);set(handles.dpf2000,'String',dcp2000);
dcp4000=0.14*sqrt(Q*Rp4000);set(handles.dpf4000,'String',dcp4000);


% --- Executes on button press in splbanda.
function splbanda_Callback(hObject, eventdata, handles)
wa=get(handles.Wa,'String');wa=str2num(wa);
q=get(handles.Q,'String');q=str2num(q);
d=get(handles.r,'String');d=str2num(d);

r125=get(handles.rp125,'String');r125=str2num(r125);
r250=get(handles.rp250,'String');r250=str2num(r250);
r500=get(handles.rp500,'String');r500=str2num(r500);
r1000=get(handles.rp1000,'String');r1000=str2num(r1000);
r2000=get(handles.rp2000,'String');r2000=str2num(r2000);
r4000=get(handles.rp4000,'String');r4000=str2num(r4000);



spl125=120+(10*log10(wa))+(10*log10((q/(4*pi*(d^2)))+(4/r125)));
set(handles.splp125,'String',spl125);

spl250=120+(10*log10(wa))+(10*log10((q/(4*pi*d^2))+(4/r250)));
set(handles.splp250,'String',spl250);

spl500=120+(10*log10(wa))+(10*log10((q/(4*pi*d^2))+(4/r500)));
set(handles.splp500,'String',spl500);

spl1000=120+(10*log10(wa))+(10*log10((q/(4*pi*d^2))+(4/r1000)));
set(handles.splp1000,'String',spl1000);


spl2000=120+(10*log10(wa))+(10*log10((q/(4*pi*d^2))+(4/r2000)));
set(handles.splp2000,'String',spl2000);

spl4000=120+(10*log10(wa))+(10*log10((q/(4*pi*d^2))+(4/r4000)));
set(handles.splp4000,'String',spl4000);


% hObject    handle to splbanda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function splbanda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to splbanda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
