function varargout = untitled3SINE(varargin)
% UNTITLED3SINE MATLAB code for untitled3SINE.fig
%      UNTITLED3SINE, by itself, creates a new UNTITLED3SINE or raises the existing
%      singleton*.
%
%      H = UNTITLED3SINE returns the handle to a new UNTITLED3SINE or the handle to
%      the existing singleton*.
%
%      UNTITLED3SINE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED3SINE.M with the given input arguments.
%
%      UNTITLED3SINE('Property','Value',...) creates a new UNTITLED3SINE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled3SINE_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled3SINE_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled3SINE

% Last Modified by GUIDE v2.5 23-Nov-2023 23:03:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled3SINE_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled3SINE_OutputFcn, ...
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


% --- Executes just before untitled3SINE is made visible.
function untitled3SINE_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled3SINE (see VARARGIN)

% Choose default command line output for untitled3SINE
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled3SINE wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled3SINE_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in SINE.
function SINE_Callback(hObject, eventdata, handles)
% hObject    handle to SINE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = 0: 0.01:2*pi;
plot(sin(x));



% --- Executes on button press in sin3x.
function sin3x_Callback(hObject, eventdata, handles)
% hObject    handle to sin3x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = 0:0.01:2*pi;
plot(sin(3*x));

% --- Executes on button press in sine3.
function sine3_Callback(hObject, eventdata, handles)
% hObject    handle to sine3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x =0: 0.01:2*pi;
plot(sin(x)+sin(3*x));