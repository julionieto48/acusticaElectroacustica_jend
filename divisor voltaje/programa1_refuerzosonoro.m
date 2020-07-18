function varargout = programa1_refuerzosonoro(varargin)
% PROGRAMA1_REFUERZOSONORO MATLAB code for programa1_refuerzosonoro.fig
%      PROGRAMA1_REFUERZOSONORO, by itself, creates a new PROGRAMA1_REFUERZOSONORO or raises the existing
%      singleton*.
%
%      H = PROGRAMA1_REFUERZOSONORO returns the handle to a new PROGRAMA1_REFUERZOSONORO or the handle to
%      the existing singleton*.
%
%      PROGRAMA1_REFUERZOSONORO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROGRAMA1_REFUERZOSONORO.M with the given input arguments.
%
%      PROGRAMA1_REFUERZOSONORO('Property','Value',...) creates a new PROGRAMA1_REFUERZOSONORO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before programa1_refuerzosonoro_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to programa1_refuerzosonoro_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help programa1_refuerzosonoro

% Last Modified by GUIDE v2.5 13-Mar-2018 02:21:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @programa1_refuerzosonoro_OpeningFcn, ...
                   'gui_OutputFcn',  @programa1_refuerzosonoro_OutputFcn, ...
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


% --- Executes just before programa1_refuerzosonoro is made visible.
function programa1_refuerzosonoro_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to programa1_refuerzosonoro (see VARARGIN)

% Choose default command line output for programa1_refuerzosonoro
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes programa1_refuerzosonoro wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = programa1_refuerzosonoro_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in impedanciacarga.
function impedanciacarga_Callback(hObject, eventdata, handles)
valor = get(hObject,'String');a =get(hObject,'Value'); set(handles.cambio1,'String',valor(a));


% hObject    handle to impedanciacarga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns impedanciacarga contents as cell array
%        contents{get(hObject,'Value')} returns selected item from impedanciacarga


% --- Executes during object creation, after setting all properties.
function impedanciacarga_CreateFcn(hObject, eventdata, handles)
% hObject    handle to impedanciacarga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in resistenciaaltavoces.
function resistenciaaltavoces_Callback(hObject, eventdata, handles)
valor = get(hObject,'String');a =get(hObject,'Value'); set(handles.cambio2,'String',valor(a));
% hObject    handle to resistenciaaltavoces (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns resistenciaaltavoces contents as cell array
%        contents{get(hObject,'Value')} returns selected item from resistenciaaltavoces


% --- Executes during object creation, after setting all properties.
function resistenciaaltavoces_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resistenciaaltavoces (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sensibilidadspk_Callback(hObject, eventdata, handles)
% hObject    handle to sensibilidadspk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sensibilidadspk as text
%        str2double(get(hObject,'String')) returns contents of sensibilidadspk as a double


% --- Executes during object creation, after setting all properties.
function sensibilidadspk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sensibilidadspk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function potenciaspk_Callback(hObject, eventdata, handles)
% hObject    handle to potenciaspk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of potenciaspk as text
%        str2double(get(hObject,'String')) returns contents of potenciaspk as a double


% --- Executes during object creation, after setting all properties.
function potenciaspk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to potenciaspk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tolerancia_Callback(hObject, eventdata, handles)
% hObject    handle to tolerancia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tolerancia as text
%        str2double(get(hObject,'String')) returns contents of tolerancia as a double


% --- Executes during object creation, after setting all properties.
function tolerancia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tolerancia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculo.
function calculo_Callback(hObject, eventdata, handles)



cantspkrs = get(handles.numeroaltavoces,'Value');

if (cantspkrs== 3)
    cantspkrs = 4;
elseif (cantspkrs== 4)
    cantspkrs = 6;
elseif (cantspkrs== 5)
    cantspkrs = 8;
end

impedancia_de_carga = get(handles.impedanciacarga,'Value');
if (impedancia_de_carga == 1)
    impedancia_de_carga = 2;
elseif (impedancia_de_carga == 2)
    impedancia_de_carga = 4;
elseif (impedancia_de_carga == 3)
    impedancia_de_carga = 6;
elseif (impedancia_de_carga == 4)
    impedancia_de_carga = 8;
elseif (impedancia_de_carga == 5)
    impedancia_de_carga = 16;
    
end


resistencia_altavoces = get(handles.resistenciaaltavoces,'Value');

if (resistencia_altavoces == 1)
    resistencia_altavoces = 4;
elseif (resistencia_altavoces == 2)
    resistencia_altavoces = 8;
elseif (resistencia_altavoces == 3)
    resistencia_altavoces = 12;
end



if (cantspkrs == 1)
    
    if (impedancia_de_carga == resistencia_altavoces)
        figure;
        [X,map] = imread('1_spk','png');imshow(X,map); 
    elseif (impedancia_de_carga ~= resistencia_altavoces)
        figure;
        [X,map] = imread('not_found','png');imshow(X,map); msgbox('NOT FOUND');
    end   
  
end

if (cantspkrs == 2)
       
    impedanciadeprueba = (resistencia_altavoces)*2;
    if impedanciadeprueba == impedancia_de_carga
        figure;[X,map] = imread('2_spk_serie','png');imshow(X,map);
    elseif (impedanciadeprueba ~=  impedancia_de_carga)
        impedanciadeprueba = resistencia_altavoces*resistencia_altavoces/(resistencia_altavoces+resistencia_altavoces);
        if (impedanciadeprueba == impedancia_de_carga)
            figure;[X,map] = imread('2_spk_paralelo','png');imshow(X,map);
        else
            figure;[X,map] = imread('not_found','png');imshow(X,map);msgbox('NOT FOUND');
        end   
    end   
end

if(cantspkrs == 4)
    impedanciadeprueba = (resistencia_altavoces)*cantspkrs

    if impedanciadeprueba == impedancia_de_carga
        disp('la configuracion es los dos speakers en serie')
        figure;[X,map] = imread('4_spk_todosserie','png');imshow(X,map); 
    elseif (impedanciadeprueba ~= impedancia_de_carga)
        impedanciadeprueba = 1/((1/resistencia_altavoces+resistencia_altavoces)*2);
        if (impedanciadeprueba == impedancia_de_carga)
            %disp('la configuracion es de series y paralelos')
            figure;[X,map] = imread('4_spk_serieparalelo','png');imshow(X,map) 
        elseif (impedanciadeprueba ~= impedancia_de_carga)
            impedanciadeprueba = 1/((1/resistencia_altavoces)*cantspkrs)
            if (impedanciadeprueba == impedancia_de_carga)
                disp('la configuracion es de  paralelos')
                figure;[X,map] = imread('4_spk_todosparalelo','png');imshow(X,map);
            else
                figure;[X,map] = imread('not_found','png');imshow(X,map);msgbox('NOT FOUND');
          
            end 
        end
    end

    
end



% hObject    handle to calculo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in numeroaltavoces.
function numeroaltavoces_Callback(hObject, eventdata, handles)
valor = get(hObject,'String');a =get(hObject,'Value'); set(handles.cambio3,'String',valor(a));
% hObject    handle to numeroaltavoces (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns numeroaltavoces contents as cell array
%        contents{get(hObject,'Value')} returns selected item from numeroaltavoces


% --- Executes during object creation, after setting all properties.
function numeroaltavoces_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numeroaltavoces (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in limpiar.
function limpiar_Callback(hObject, eventdata, handles)

% hObject    handle to limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in calculo2.
function calculo2_Callback(hObject, eventdata, handles)

cantspkrs = get(handles.numeroaltavoces,'Value');

if (cantspkrs== 3)
    cantspkrs = 4;
elseif (cantspkrs== 4)
    cantspkrs = 6;
elseif (cantspkrs== 5)
    cantspkrs = 8;
end


sensibilidadspk = get(handles.sensibilidadspk,'String');sensibilidadspk = str2num(sensibilidadspk);
potenciaspk = get(handles.potenciaspk,'String'); potenciaspk = str2num(potenciaspk);
tolerancia = get(handles.tolerancia,'String'); tolerancia = str2num(tolerancia);
distancia = get(handles.distanci,'String'); distancia = str2num(distancia);

if(cantspkrs == 1)
    consumo_total = potenciaspk;
    potenciaideal = consumo_total + (consumo_total*tolerancia/(100));
    Sensibilidad_total = sensibilidadspk;
    nivelapotencia = 10*log10(consumo_total/1);SPL1 = Sensibilidad_total + nivelapotencia;
    SPL2 = SPL1 -20*log10(distancia);
    x = 1:0.5:100; funct = SPL1 - 20*log(x);
    plot(handles.axes1,funct);grid on;title('Decaimiennto SPL'); xlabel('Distancia [m]');ylabel('SPL')
    % hold on ; scatter(distancia,SPL2);
    
    set(handles.spl1,'String',SPL1);set(handles.potenciaideal,'String',potenciaideal);
    set(handles.sensibilidadtotal,'String',Sensibilidad_total);set(handles.niveldepotencia,'String',nivelapotencia)
    set(handles.distanciaspl,'string',SPL2);
    
    
end

if(cantspkrs == 2)
    consumo_total = potenciaspk*cantspkrs;
    potenciaideal = consumo_total + (consumo_total*tolerancia/(100));
    Sensibilidad_total = 10*log(10^(sensibilidadspk/10)+10^(sensibilidadspk/10));
%spl a potencia de todos spk
    nivelapotencia = 10*log10(consumo_total/1);SPL1 = Sensibilidad_total + nivelapotencia;
% onda esferica
    SPL2 = SPL1 -20*log10(distancia)
    x = 1:0.5:100; funct = SPL1 - 20*log(x);
    plot(handles.axes1,funct);grid on;title('Decaimiennto SPL'); xlabel('Distancia [m]');ylabel('SPL')
    % hold on ; scatter(distancia,SPL2);
    
    set(handles.spl1,'String',SPL1);set(handles.potenciaideal,'String',potenciaideal);
    set(handles.sensibilidadtotal,'String',Sensibilidad_total);set(handles.niveldepotencia,'String',nivelapotencia)
    set(handles.distanciaspl,'string',SPL2);
    
end
if(cantspkrs == 4)
    consumo_total = potenciaspk*cantspkrs;
    potenciaideal = consumo_total + (consumo_total*tolerancia/(100));
    Sensibilidad_total = 10*log(10^(sensibilidadspk/10)+10^(sensibilidadspk/10)+10^(sensibilidadspk/10)+10^(sensibilidadspk/10));
%spl a potencia de todos spk
    nivelapotencia = 10*log10(consumo_total/1);SPL1 = Sensibilidad_total + nivelapotencia;
% onda esferica
    SPL2 = SPL1 -20*log10(distancia)
    x = 1:0.5:100; funct = SPL1 - 20*log(x);
    plot(handles.axes1,funct);grid on;title('Decaimiennto SPL'); xlabel('Distancia [m]');ylabel('SPL')
    % hold on ; scatter(distancia,SPL2);
    
    set(handles.spl1,'String',SPL1);set(handles.potenciaideal,'String',potenciaideal);
    set(handles.sensibilidadtotal,'String',Sensibilidad_total);set(handles.niveldepotencia,'String',nivelapotencia)
    set(handles.distanciaspl,'string',SPL2);
    
end
if(cantspkrs == 6)
    consumo_total = potenciaspk*cantspkrs;
    potenciaideal = consumo_total + (consumo_total*tolerancia/(100));
    Sensibilidad_total = 10*log(10^(sensibilidadspk/10)+10^(sensibilidadspk/10)+10^(sensibilidadspk/10)+10^(sensibilidadspk/10)+10^(sensibilidadspk/10)+10^(sensibilidadspk/10));
%spl a potencia de todos spk
    nivelapotencia = 10*log10(consumo_total/1);SPL1 = Sensibilidad_total + nivelapotencia;
% onda esferica
    SPL2 = SPL1 -20*log10(distancia)
    x = 1:0.5:100; funct = SPL1 - 20*log(x);
    plot(handles.axes1,funct);grid on;title('Decaimiennto SPL'); xlabel('Distancia [m]');ylabel('SPL')
    % hold on ; scatter(distancia,SPL2);
    
    set(handles.spl1,'String',SPL1);set(handles.potenciaideal,'String',potenciaideal);
    set(handles.sensibilidadtotal,'String',Sensibilidad_total);set(handles.niveldepotencia,'String',nivelapotencia)
    set(handles.distanciaspl,'string',SPL2);
    
end
if(cantspkrs == 8)
    consumo_total = potenciaspk*cantspkrs;
    potenciaideal = consumo_total + (consumo_total*tolerancia/(100));
    Sensibilidad_total = 10*log(10^(sensibilidadspk/10)+10^(sensibilidadspk/10)+10^(sensibilidadspk/10)+10^(sensibilidadspk/10)+10^(sensibilidadspk/10)+10^(sensibilidadspk/10)+10^(sensibilidadspk/10)+10^(sensibilidadspk/10));
%spl a potencia de todos spk
    nivelapotencia = 10*log10(consumo_total/1);SPL1 = Sensibilidad_total + nivelapotencia;
% onda esferica
    SPL2 = SPL1 -20*log10(distancia)
    x = 1:0.5:100; funct = SPL1 - 20*log(x);
    plot(handles.axes1,funct);grid on;title('Decaimiennto SPL'); xlabel('Distancia [m]');ylabel('SPL')
    % hold on ; scatter(distancia,SPL2);
    
    set(handles.spl1,'String',SPL1);set(handles.potenciaideal,'String',potenciaideal);
    set(handles.sensibilidadtotal,'String',Sensibilidad_total);set(handles.niveldepotencia,'String',nivelapotencia)
    set(handles.distanciaspl,'string',SPL2);
    
end




% hObject    handle to calculo2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function distanci_Callback(hObject, eventdata, handles)
% hObject    handle to distanci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of distanci as text
%        str2double(get(hObject,'String')) returns contents of distanci as a double


% --- Executes during object creation, after setting all properties.
function distanci_CreateFcn(hObject, eventdata, handles)
% hObject    handle to distanci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
