function varargout = acustica3(varargin)
% ACUSTICA3 MATLAB code for acustica3.fig
%      ACUSTICA3, by itself, creates a new ACUSTICA3 or raises the existing
%      singleton*.
%
%      H = ACUSTICA3 returns the handle to a new ACUSTICA3 or the handle to
%      the existing singleton*.
%
%      ACUSTICA3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ACUSTICA3.M with the given input arguments.
%
%      ACUSTICA3('Property','Value',...) creates a new ACUSTICA3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before acustica3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to acustica3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help acustica3

% Last Modified by GUIDE v2.5 15-Mar-2017 03:19:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @acustica3_OpeningFcn, ...
                   'gui_OutputFcn',  @acustica3_OutputFcn, ...
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


% --- Executes just before acustica3 is made visible.
function acustica3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to acustica3 (see VARARGIN)

% Choose default command line output for acustica3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes acustica3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = acustica3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function largo_Callback(hObject, eventdata, handles)
% hObject    handle to largo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of largo as text
%        str2double(get(hObject,'String')) returns contents of largo as a double


% --- Executes during object creation, after setting all properties.
function largo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to largo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ancho_Callback(hObject, eventdata, handles)
% hObject    handle to ancho (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ancho as text
%        str2double(get(hObject,'String')) returns contents of ancho as a double


% --- Executes during object creation, after setting all properties.
function ancho_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ancho (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alto_Callback(hObject, eventdata, handles)
% hObject    handle to alto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alto as text
%        str2double(get(hObject,'String')) returns contents of alto as a double


% --- Executes during object creation, after setting all properties.
function alto_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function amedpromed_Callback(hObject, eventdata, handles)
% hObject    handle to amedpromed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amedpromed as text
%        str2double(get(hObject,'String')) returns contents of amedpromed as a double


% --- Executes during object creation, after setting all properties.
function amedpromed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amedpromed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushaxiales.
function pushaxiales_Callback(hObject, eventdata, handles)
fdos=get(handles.f2,'String');F2=str2double(fdos);


%para x

syms x

Lx=get(handles.largo,'String');lx=str2double(Lx);

f(x)=(340/2)*(x/lx);

i=1;

for i=1:1:50
    
    e=f(i);E=char(e); %evalucion de i en la funcion
    set(handles.controladorx,'String',E)
    
    if(e>=F2)
        %set(handles.paxialx,'String',i)
        
        break
       
    end
    a=get(handles.controladorx,'String'); 
    str_part=a;
    old_str=get(handles.enx,'String');
    new_str= char(old_str, str_part);
    set(handles.enx,'String',new_str);
  
end

set(handles.paxialx,'String',i)
nume=get(handles.enx,'String');nume=str2num(nume);Maxim=max(nume);
set(handles.controladorx,'String',Maxim);

%para y

syms y

Ly=get(handles.alto,'String');ly=str2double(Ly);

f(y)=(340/2)*(y/ly);

j=0;

for j=1:1:50
    
    g=f(j);G=char(g); %evalucion de i en la funcion
    set(handles.controladory,'String',G)
    if(g>=F2)
        %set(handles.qaxialy,'String',k)
 
        break
       
    end
    
    
    b=get(handles.controladory,'String'); 
    str_part=b;
    old_str=get(handles.eny,'String');
    new_str= char(old_str, str_part);
    set(handles.eny,'String',new_str);
  
    
    

end
set(handles.qaxialy,'String',j)
nume=get(handles.eny,'String');nume=str2num(nume);Maxim=max(nume);
set(handles.controladory,'String',Maxim);


% para z
syms z

Lz=get(handles.largo,'String');lz=str2double(Lz);

f(z)=(340/2)*(z/lz);

k=0;

for k=1:1:50
    
    e=f(k);E=char(e); %evalucion de i en la funcion
    set(handles.controladorz,'String',E)
    if(e>=F2)
        
        %set(handles.raxialz,'String',k)
 
        break
       
    end
    
    a=get(handles.controladorz,'String'); 
    str_part=a;
    old_str=get(handles.enz,'String');
    new_str= char(old_str, str_part);
    set(handles.enz,'String',new_str);   

end
set(handles.raxialz,'String',k)
nume=get(handles.enz,'String');nume=str2num(nume);Maxim=max(nume);
set(handles.controladorz,'String',Maxim);


% hObject    handle to pushaxiales (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in enx.
function enx_Callback(hObject, eventdata, handles)
% hObject    handle to enx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns enx contents as cell array
%        contents{get(hObject,'Value')} returns selected item from enx


% --- Executes during object creation, after setting all properties.
function enx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in eny.
function eny_Callback(hObject, eventdata, handles)
% hObject    handle to eny (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns eny contents as cell array
%        contents{get(hObject,'Value')} returns selected item from eny


% --- Executes during object creation, after setting all properties.
function eny_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eny (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in enz.
function enz_Callback(hObject, eventdata, handles)
% hObject    handle to enz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns enz contents as cell array
%        contents{get(hObject,'Value')} returns selected item from enz


% --- Executes during object creation, after setting all properties.
function enz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushparametros.
function pushparametros_Callback(hObject, eventdata, handles)

% obtener entrada de dimensiones
lx=get(handles.largo,'String');ly=get(handles.alto,'String');lz=get(handles.ancho,'String');
Lx=str2double(lx);Ly=str2double(ly);Lz=str2double(lz);
vol=Lx*Ly*Lz; set(handles.volumen,'String',vol);

% obtener ABS mid
%VOL=get(handles.volumen,'String');Vol=str2double(VOL);
Alfmed=get(handles.amedpromed,'String');alfmed=str2double(Alfmed);
ABSmed=vol*alfmed; set(handles.absmid,'String',ABSmed);

% obtener Rt

rT=(0.16*vol)/(ABSmed); set(handles.rt,'String',rT);

% obtener f2

frec2=2000* sqrt(rT/vol);set(handles.f2,'String',frec2);










% hObject    handle to pushparametros (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in enxy.
function enxy_Callback(hObject, eventdata, handles)
% hObject    handle to enxy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns enxy contents as cell array
%        contents{get(hObject,'Value')} returns selected item from enxy


% --- Executes during object creation, after setting all properties.
function enxy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enxy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in enyx.
function enyx_Callback(hObject, eventdata, handles)
% hObject    handle to enyx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns enyx contents as cell array
%        contents{get(hObject,'Value')} returns selected item from enyx


% --- Executes during object creation, after setting all properties.
function enyx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enyx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in enxz.
function enxz_Callback(hObject, eventdata, handles)
% hObject    handle to enxz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns enxz contents as cell array
%        contents{get(hObject,'Value')} returns selected item from enxz


% --- Executes during object creation, after setting all properties.
function enxz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enxz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in enzx.
function enzx_Callback(hObject, eventdata, handles)
% hObject    handle to enzx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns enzx contents as cell array
%        contents{get(hObject,'Value')} returns selected item from enzx


% --- Executes during object creation, after setting all properties.
function enzx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enzx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in enyz.
function enyz_Callback(hObject, eventdata, handles)
% hObject    handle to enyz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns enyz contents as cell array
%        contents{get(hObject,'Value')} returns selected item from enyz


% --- Executes during object creation, after setting all properties.
function enyz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enyz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in enzy.
function enzy_Callback(hObject, eventdata, handles)
% hObject    handle to enzy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns enzy contents as cell array
%        contents{get(hObject,'Value')} returns selected item from enzy


% --- Executes during object creation, after setting all properties.
function enzy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enzy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushtangenciales.
function pushtangenciales_Callback(hObject, eventdata, handles)
% hObject    handle to pushtangenciales (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

fdos=get(handles.f2,'String');F2=str2double(fdos);
Lx=get(handles.largo,'String');lx=str2double(Lx);Ly=get(handles.alto,'String');ly=str2double(Ly);
Lz=get(handles.ancho,'String');lz=str2double(Lz);

%para xy
syms x y
f(x,y)=(340/2)*sqrt( ((x/lx)^2)* ((y/ly)^2));

i=1;

for i=1:1:3
    j=1;
    for j=1:1:50
        a=f(i,j);A=char(a);
        set(handles.controladorxy,'String',A)
        % escribir en el listbox
        b=get(handles.controladorxy,'String');
        str_part=b;
        old_str=get(handles.enxy,'String');
        new_str= char(old_str, str_part);
        set(handles.enxy,'String',new_str);
        
        set(handles.tan1x,'String',j)
        set(handles.tan1y,'String',i)
        if(a>= F2)|(j~=i)

            break
        end
        
    end
           
end

%para yx
syms x y
f(x,y)=(340/2)*sqrt( ((x/lx)^2)* ((y/ly)^2));

j=1;

for j=1:1:3
    i=1;
    for i=1:1:12
        a=f(j,i);A=char(a);
        set(handles.controladoryx,'String',A)
        % escribir en el listbox
        b=get(handles.controladoryx,'String');
        str_part=b;
        old_str=get(handles.enyx,'String');
        new_str= char(old_str, str_part);
        set(handles.enyx,'String',new_str);
        
        set(handles.tan2x,'String',j)
        set(handles.tan2y,'String',i)
        if(a>= F2)| (j~=i)

            break
        end
        
    end
           
end

%para xz
syms x z
f(x,z)=(340/2)*sqrt( ((x/lx)^2)* ((z/lz)^2));

i=1;

for i=1:1:3
    k=1;
    for k=1:1:50
        a=f(i,k);A=char(a);
        set(handles.controladorxz,'String',A)
        % escribir en el listbox
        b=get(handles.controladorxz,'String');
        str_part=b;
        old_str=get(handles.enxz,'String');
        new_str= char(old_str, str_part);
        set(handles.enxz,'String',new_str);
        
        set(handles.tan3x,'String',k)
        set(handles.tan3z,'String',i)
        if(a>= F2)| (k~=i)

            break
        end
        
    end
           
end

%para zx
syms x z
f(x,z)=(340/2)*sqrt( ((x/lx)^2)* ((z/lz)^2));

k=1;

for k=1:1:3
    i=1;
    for i=1:1:12
        a=f(k,i);A=char(a);
        set(handles.controladorzx,'String',A)
        % escribir en el listbox
        b=get(handles.controladorzx,'String');
        str_part=b;
        old_str=get(handles.enzx,'String');
        new_str= char(old_str, str_part);
        set(handles.enzx,'String',new_str);
        
        set(handles.tan4x,'String',i)
        set(handles.tan4z,'String',k)
        if(a>= F2)| (k~=i)

            break
        end
        
    end
           
end

%para yz
syms y z
f(y,z)=(340/2)*sqrt( ((y/ly)^2)* ((z/lz)^2));

j=1;

for j=1:1:3
    k=1;
    for k=1:1:50
        a=f(j,k);A=char(a);
        set(handles.controladoryz,'String',A)
        % escribir en el listbox
        b=get(handles.controladoryz,'String');
        str_part=b;
        old_str=get(handles.enyz,'String');
        new_str= char(old_str, str_part);
        set(handles.enyz,'String',new_str);
        
        set(handles.tan5y,'String',k)
        set(handles.tan5z,'String',j)
        if(a>= F2)| (j~=k)

            break
        end
        
    end
           
end

%para zy
syms y z
f(y,z)=(340/2)*sqrt( ((y/ly)^2)* ((z/lz)^2));

k=1;

for k=1:1:3
    j=1;
    for j=1:1:12
        a=f(k,j);A=char(a);
        set(handles.controladorzy,'String',A)
        % escribir en el listbox
        b=get(handles.controladorzy,'String');
        str_part=b;
        old_str=get(handles.enzy,'String');
        new_str= char(old_str, str_part);
        set(handles.enzy,'String',new_str);
        
        set(handles.tan6z,'String',j)
        set(handles.tan6y,'String',k)
        if(a>= F2)|(j~=k)

            break
        end
        
    end
           
end


% --- Executes on button press in pushoblicuos.
function pushoblicuos_Callback(hObject, eventdata, handles)
% hObject    handle to pushoblicuos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms x y z
% modos oblicuos

fdos=get(handles.f2,'String');F2=str2double(fdos);
Lx=get(handles.largo,'String');lx=str2double(Lx);Ly=get(handles.alto,'String');ly=str2double(Ly);
Lz=get(handles.ancho,'String');lz=str2double(Lz);
f(x,y,z)=(340/2)*sqrt( ((x/lx)^2)* ((y/ly)^2)*((z/lz)^2));

i=1;

for i=1:1:2
    
    %disp('En la iteracion en x');i
    j=1;
    
    for j=1:1:4
        %disp('En la iteracion en y');j
        k=1;
        for k=1:1:6
            %disp('En la iteracion en z');k
            a=f(i,j,k);A=char(a);
            set(handles.controladorxyz,'String',A)
            b=get(handles.controladorxyz,'String');
            str_part=b;
            old_str=get(handles.enxyz,'String');
            new_str= char(old_str, str_part);
            set(handles.enxyz,'String',new_str);
        
            set(handles.obx,'String',i)
            set(handles.oby,'String',j)
            set(handles.obz,'String',k)
           
            if(a>= F2)| (k~=i)&& (k~=j)&&(j~=i)
            break
            end
        end
         
    end
           
end


% --- Executes on selection change in enxyz.
function enxyz_Callback(hObject, eventdata, handles)
% hObject    handle to enxyz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns enxyz contents as cell array
%        contents{get(hObject,'Value')} returns selected item from enxyz


% --- Executes during object creation, after setting all properties.
function enxyz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enxyz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushgitchford.
function pushgitchford_Callback(hObject, eventdata, handles)
% hObject    handle to pushgitchford (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
s1=get(handles.enx,'String');S1=str2num(s1);s2=get(handles.eny,'String');S2=str2num(s2);
s3=get(handles.enz,'String');S3=str2num(s3);

vec=vertcat(S1, S2, S3);vec=sort(vec);

for a=1 :length(vec)
    unos(a)=1;
    
end
axes(handles.grafica);
stem(vec,unos);
set(gca,'xscal','log');
set(gca,'xTickLabel',num2str(get(gca,'xTick').'));

xlabel('Frequency');

grid on; 


a=find(diff(vec)==0) ;fprob=vec(a);
set(handles.repi,'string',fprob);

frepetidas=get(handles.repi,'String');frepetidas=str2num(frepetidas);
frepetidas=frepetidas';
l=length(frepetidas);

%veczer=zeros(1,l)
%for i=0;l
%    veczero
    
%end

%



% --- Executes on selection change in repi.
function repi_Callback(hObject, eventdata, handles)
% hObject    handle to repi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns repi contents as cell array
%        contents{get(hObject,'Value')} returns selected item from repi


% --- Executes during object creation, after setting all properties.
function repi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to repi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in cantrepi.
function cantrepi_Callback(hObject, eventdata, handles)
% hObject    handle to cantrepi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns cantrepi contents as cell array
%        contents{get(hObject,'Value')} returns selected item from cantrepi


% --- Executes during object creation, after setting all properties.
function cantrepi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cantrepi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbonelo.
function pushbonelo_Callback(hObject, eventdata, handles)
% hObject    handle to pushbonelo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xnormalized=[12,5 16 20 25 31.5 40 50 63 80 100]
%long=length(xnormalized);

%tomoaxiales
s1=get(handles.enx,'String');S1=str2num(s1);s2=get(handles.eny,'String');S2=str2num(s2);
s3=get(handles.enz,'String');S3=str2num(s3);

%tomo tangenciales
s4=get(handles.enxy,'String');S4=str2num(s4);s5=get(handles.enxz,'String');S5=str2num(s5);
s6=get(handles.enyz,'String');S6=str2num(s6);

%tomo oblicuo
s7=get(handles.enxyz,'String');S7=str2num(s7);

vec=vertcat(S1, S2, S3,S4,S5,S6,S7);vec=sort(vec); 
vec=vec';
a=find(diff(vec)==0) ;fprob=vec(a);
set(handles.repet,'string',fprob);

%repeticiones=get(handles.repet,'String');repeticiones=str2num(repeticiones);

l=length(vec);
vecero=zeros(1,l);
for i=1:l
    contr=vec(i);
    %if(contr<20 )
        vecero(1)=vecero(1)+1;
    %end
    if(contr==20 && contr<25)
        vecero(2)=vecero(2)+1;
    end
    if(contr==25 && contr<31.5)
        vecero(3)=vecero(3)+1;
    end
    if(contr==31.5 && contr<40)
        vecero(4)=vecero(4)+1;
    end
    if(contr==40 && contr<50)
        vecero(5)=vecero(5)+1;
    end
    if(contr==50 && contr<63)
        vecero(6)=vecero(6)+1;
    end
    if(contr==63 && contr<80)
        vecero(7)=vecero(7)+1;
    end
    if(contr==80 && contr<100)
        vecero(8)=vecero(8)+2;
    end
    %if(contr<100)
        vecero(9)=vecero(9)+3;
    %end   
    
end

set(handles.reper,'String',vec);

axes(handles.grafica2);
%xlim([12.5 100]);
plot(vec,vecero);

xlabel('Frequency');ylabel('Cantidad');

grid on; 




% --- Executes on selection change in repet.
function repet_Callback(hObject, eventdata, handles)
% hObject    handle to repet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns repet contents as cell array
%        contents{get(hObject,'Value')} returns selected item from repet


% --- Executes during object creation, after setting all properties.
function repet_CreateFcn(hObject, eventdata, handles)
% hObject    handle to repet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in reper.
function reper_Callback(hObject, eventdata, handles)
% hObject    handle to reper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns reper contents as cell array
%        contents{get(hObject,'Value')} returns selected item from reper


% --- Executes during object creation, after setting all properties.
function reper_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
