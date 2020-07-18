function varargout = arquitectonica2(varargin)
% ARQUITECTONICA2 MATLAB code for arquitectonica2.fig
%      ARQUITECTONICA2, by itself, creates a new ARQUITECTONICA2 or raises the existing
%      singleton*.
%
%      H = ARQUITECTONICA2 returns the handle to a new ARQUITECTONICA2 or the handle to
%      the existing singleton*.
%
%      ARQUITECTONICA2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARQUITECTONICA2.M with the given input arguments.
%
%      ARQUITECTONICA2('Property','Value',...) creates a new ARQUITECTONICA2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before arquitectonica2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to arquitectonica2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help arquitectonica2

% Last Modified by GUIDE v2.5 21-Feb-2017 19:39:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @arquitectonica2_OpeningFcn, ...
                   'gui_OutputFcn',  @arquitectonica2_OutputFcn, ...
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


% --- Executes just before arquitectonica2 is made visible.
function arquitectonica2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to arquitectonica2 (see VARARGIN)

% Choose default command line output for arquitectonica2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes arquitectonica2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = arquitectonica2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in tipomaterial.
function tipomaterial_Callback(hObject, eventdata, handles)
% hObject    handle to tipomaterial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
contenidotipo=get(hObject,'String');
num= get(hObject,'Value');
switch num
    case 1
        set(handles.meterial,'String','N/a')
        
        
    case 2
        set(handles.meterial,'String','Ladrillo \n Bloque Hormigon')
    
end    


%-Moquetas/alfombras
%-Objetos
%-Materiales/ construccion especial
% Hints: contents = cellstr(get(hObject,'String')) returns tipomaterial contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tipomaterial


% --- Executes during object creation, after setting all properties.
function tipomaterial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tipomaterial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in material.
function material_Callback(hObject, eventdata, handles)
% hObject    handle to material (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: contents = cellstr(get(hObject,'String')) returns material contents as cell array
%        contents{get(hObject,'Value')} returns selected item from material


% --- Executes during object creation, after setting all properties.
function material_CreateFcn(hObject, eventdata, handles)
% hObject    handle to material (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
