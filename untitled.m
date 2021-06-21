function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 17-Jun-2021 18:06:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)



% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} =[];


% --- Executes on button press in V0.
function V0_Callback(hObject, eventdata, handles)
% hObject    handle to V0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.V0,'BackgroundColor') == [1 0 0]
    set(handles.V0,'BackgroundColor',[0 1 0]);
    write(handles.s,'v01d','String');
elseif get(handles.V0,'BackgroundColor') == [0 1 0]
    set(handles.V0,'BackgroundColor',[1 0 0]);
    write(handles.s,'v00d','String');
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a = get(handles.slider1,'Value');
write(handles.s,append('p',num2str(round(a)),'d'),'String');

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a = get(handles.slider2,'Value');
write(handles.s,append('n',num2str(round(a)),'d'),'String');

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on button press in V2.
function V1_Callback(hObject, eventdata, handles)
% hObject    handle to V2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.V1,'BackgroundColor') == [1 0 0]
    set(handles.V1,'BackgroundColor',[0 1 0]);
    write(handles.s,'v11d','String');
elseif get(handles.V1,'BackgroundColor') == [0 1 0]
    set(handles.V1,'BackgroundColor',[1 0 0]);
    write(handles.s,'v10d','String');
end




% --- Executes on button press in V2.
function V2_Callback(hObject, eventdata, handles)
% hObject    handle to V2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.V2,'BackgroundColor') == [1 0 0]
    set(handles.V2,'BackgroundColor',[0 1 0]);
    write(handles.s,'v21d','String');
elseif get(handles.V2,'BackgroundColor') == [0 1 0]
    set(handles.V2,'BackgroundColor',[1 0 0]);
    write(handles.s,'v20d','String');
end

% --- Executes on button press in V3.
function V3_Callback(hObject, eventdata, handles)
% hObject    handle to V3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.V3,'BackgroundColor') == [1 0 0]
    set(handles.V3,'BackgroundColor',[0 1 0]);
    write(handles.s,'v31d','String');
elseif get(handles.V3,'BackgroundColor') == [0 1 0]
    set(handles.V3,'BackgroundColor',[1 0 0]);
    write(handles.s,'v30d','String');
end

% --- Executes on button press in V4.
function V4_Callback(hObject, eventdata, handles)
% hObject    handle to V4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.V4,'BackgroundColor') == [1 0 0]
    set(handles.V4,'BackgroundColor',[0 1 0]);
    write(handles.s,'v41d','String');
elseif get(handles.V4,'BackgroundColor') == [0 1 0]
    set(handles.V4,'BackgroundColor',[1 0 0]);
    write(handles.s,'v40d','String');
end

% --- Executes on button press in V5.
function V5_Callback(hObject, eventdata, handles)
% hObject    handle to V5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.V5,'BackgroundColor') == [1 0 0]
    set(handles.V5,'BackgroundColor',[0 1 0]);
    write(handles.s,'v51d','String');
elseif get(handles.V5,'BackgroundColor') == [0 1 0]
    set(handles.V5,'BackgroundColor',[1 0 0]);
    write(handles.s,'v50d','String');
end

% --- Executes on button press in V6.
function V6_Callback(hObject, eventdata, handles)
% hObject    handle to V6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.V6,'BackgroundColor') == [1 0 0]
    set(handles.V6,'BackgroundColor',[0 1 0]);
    write(handles.s,'v61d','String');
elseif get(handles.V6,'BackgroundColor') == [0 1 0]
    set(handles.V6,'BackgroundColor',[1 0 0]);
    write(handles.s,'v60d','String');
end

% --- Executes on button press in V7.
function V7_Callback(hObject, eventdata, handles)
% hObject    handle to V7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.V7,'BackgroundColor') == [1 0 0]
    set(handles.V7,'BackgroundColor',[0 1 0]);
    write(handles.s,'v71d','String');
elseif get(handles.V7,'BackgroundColor') == [0 1 0]
    set(handles.V7,'BackgroundColor',[1 0 0]);
    write(handles.s,'v70d','String');
end

% --- Executes on button press in V8.
function V8_Callback(hObject, eventdata, handles)
% hObject    handle to V8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.V8,'BackgroundColor') == [1 0 0]
    set(handles.V8,'BackgroundColor',[0 1 0]);
    write(handles.s,'v81d','String');
elseif get(handles.V8,'BackgroundColor') == [0 1 0]
    set(handles.V8,'BackgroundColor',[1 0 0]);
    write(handles.s,'v80d','String');
end

% --- Executes on button press in V9.
function V9_Callback(hObject, eventdata, handles)
% hObject    handle to V9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.V9,'BackgroundColor') == [1 0 0]
    set(handles.V9,'BackgroundColor',[0 1 0]);
    write(handles.s,'v91d','String');
elseif get(handles.V9,'BackgroundColor') == [0 1 0]
    set(handles.V9,'BackgroundColor',[1 0 0]);
    write(handles.s,'v90d','String');
end

% --- Executes on button press in initialize.
function initialize_Callback(hObject, eventdata, handles)
% hObject    handle to initialize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject;
handles.s = serialport("COM9",9600);
set(handles.s, 'Timeout',0.02);
handles.data2save = [];

handles.calibrator = zeros(1,10);

handles.h = plot(NaN, NaN,NaN,NaN,NaN,NaN,NaN, NaN,NaN,NaN,NaN,NaN,NaN, NaN,NaN,NaN,NaN,NaN,NaN,NaN,'LineWidth',2); 
xlabel("Time(s)",'FontSize', 16);
ylabel("Pressure (kPa)",'FontSize', 16);
legend("1","2","3",'4','5','6','7','8','9','10','FontSize', 16);
handles.h = findobj(gca,'Type','line'); 

write(handles.s,'v00d','String');
write(handles.s,'v10d','String');
write(handles.s,'v20d','String');
write(handles.s,'v30d','String');
write(handles.s,'v40d','String');
write(handles.s,'v50d','String');
write(handles.s,'v60d','String');
write(handles.s,'v70d','String');
write(handles.s,'v80d','String');
write(handles.s,'v90d','String');
write(handles.s,'s0d','String');
write(handles.s,'p0d','String');
write(handles.s,'n0d','String');

guidata(hObject,handles);



% --- Executes on button press in observe.
function observe_Callback(hObject, eventdata, handles)
% hObject    handle to observe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tic
while(1)
handles.output = hObject;
guidata(hObject,handles);
if get(handles.observe,'Value') == 0
    set(handles.observe,'BackgroundColor',[0.94 0.94 0.94]);
    break
else
    set(handles.observe,'BackgroundColor',[0 1 0]);
end



readings = [];
pressure = [];
    while(1)
        if handles.s.NumBytesAvailable >0
        ch = read(handles.s,handles.s.NumBytesAvailable,"char");
        handles.ch = ch;
        if get(handles.Record,'Value') ==1
            handles.data2save = [handles.data2save ch]; 
        end
        index = find(ch == '!');
        if length(index) >=2
            readings = ch((index(end-1)+1):index(end));
        end
        if max(size(readings))>=20
            pos = [0 find(readings == ';') max(size(readings))];
            for i = 1:(length(pos)-1)
                pressure_temp = str2double(readings((pos(i)+1):pos(i+1)-1));
                pressure = [pressure pressure_temp];
            end
            set(handles.PR_0,'string',append(num2str((pressure(1)-handles.calibrator(1))*33/1024),'kPa'));
            set(handles.PR_1,'string',append(num2str((pressure(2)-handles.calibrator(2))*33/1024),'kPa'));
            set(handles.PR_2,'string',append(num2str((pressure(3)-handles.calibrator(3))*33/1024),'kPa'));
            set(handles.PR_3,'string',append(num2str((pressure(4)-handles.calibrator(4))*33/1024),'kPa'));
            set(handles.PR_4,'string',append(num2str((pressure(5)-handles.calibrator(5))*33/1024),'kPa'));
            set(handles.PR_5,'string',append(num2str((pressure(6)-handles.calibrator(6))*33/1024),'kPa'));
            set(handles.PR_6,'string',append(num2str((pressure(7)-handles.calibrator(7))*33/1024),'kPa'));
            set(handles.PR_7,'string',append(num2str((pressure(8)-handles.calibrator(8))*33/1024),'kPa'));
            set(handles.PR_8,'string',append(num2str((pressure(9)-handles.calibrator(9))*33/1024),'kPa'));
            set(handles.PR_9,'string',append(num2str((pressure(10)-handles.calibrator(10))*33/1024),'kPa'));
            
            
            
            xdata = [get(handles.h(1),'XData') toc]; % update the x-data
            ydata = [get(handles.h(1),'YData') ((pressure(1)-handles.calibrator(1))*33/1024)];     % update the y-data
            set(handles.h(1),'XData',xdata(max(1,end-99):end),'YData',ydata(max(1,end-99):end));
            xdata = [get(handles.h(2),'XData') toc]; % update the x-data
            ydata = [get(handles.h(2),'YData') ((pressure(2)-handles.calibrator(2))*33/1024)];     % update the y-data
            set(handles.h(2),'XData',xdata(max(1,end-99):end),'YData',ydata(max(1,end-99):end));
            xdata = [get(handles.h(3),'XData') toc]; % update the x-data
            ydata = [get(handles.h(3),'YData') ((pressure(3)-handles.calibrator(3))*33/1024)];     % update the y-data
            set(handles.h(3),'XData',xdata(max(1,end-99):end),'YData',ydata(max(1,end-99):end));
            xdata = [get(handles.h(4),'XData') toc]; % update the x-data
            ydata = [get(handles.h(4),'YData') ((pressure(4)-handles.calibrator(4))*33/1024)];     % update the y-data
            set(handles.h(4),'XData',xdata(max(1,end-99):end),'YData',ydata(max(1,end-99):end));
            xdata = [get(handles.h(5),'XData') toc]; % update the x-data
            ydata = [get(handles.h(5),'YData') ((pressure(5)-handles.calibrator(5))*33/1024)];     % update the y-data
            set(handles.h(5),'XData',xdata(max(1,end-99):end),'YData',ydata(max(1,end-99):end));
            xdata = [get(handles.h(6),'XData') toc]; % update the x-data
            ydata = [get(handles.h(6),'YData') ((pressure(6)-handles.calibrator(6))*33/1024)];     % update the y-data
            set(handles.h(6),'XData',xdata(max(1,end-99):end),'YData',ydata(max(1,end-99):end));
            xdata = [get(handles.h(7),'XData') toc]; % update the x-data
            ydata = [get(handles.h(7),'YData') ((pressure(7)-handles.calibrator(7))*33/1024)];     % update the y-data
            set(handles.h(7),'XData',xdata(max(1,end-99):end),'YData',ydata(max(1,end-99):end));
            xdata = [get(handles.h(8),'XData') toc]; % update the x-data
            ydata = [get(handles.h(8),'YData') ((pressure(8)-handles.calibrator(8))*33/1024)];     % update the y-data
            set(handles.h(8),'XData',xdata(max(1,end-99):end),'YData',ydata(max(1,end-99):end));
            xdata = [get(handles.h(9),'XData') toc]; % update the x-data
            ydata = [get(handles.h(9),'YData') ((pressure(9)-handles.calibrator(9))*33/1024)];     % update the y-data
            set(handles.h(9),'XData',xdata(max(1,end-99):end),'YData',ydata(max(1,end-99):end));
            xdata = [get(handles.h(10),'XData') toc]; % update the x-data
            ydata = [get(handles.h(10),'YData') ((pressure(10)-handles.calibrator(10))*33/1024)];     % update the y-data
            set(handles.h(10),'XData',xdata(max(1,end-99):end),'YData',ydata(max(1,end-99):end));
            if get(handles.calibrate,'Value') == 1
                handles.calibrator = pressure(1:10);
                set(handles.calibrate,'Value',0);
            end
        
        
        end
        break



        end
    


    pause(0.08)
    end
guidata(hObject,handles);
end


% --- Executes on button press in Record.
function Record_Callback(hObject, eventdata, handles)
% hObject    handle to Record (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject;

if get(handles.Record,'Value') == 1
    set(handles.Record,'BackgroundColor',[0 1 0])
else

    a = handles.data2save;
    b = handles.calibrator;
    save(get(handles.file_name,'String'),'a','b');
    handles.data2save = [];
    set(handles.Record,'BackgroundColor',[0.94 0.94 0.94])
    
end
guidata(hObject,handles);

% Hint: get(hObject,'Value') returns toggle state of Record


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over file_name.
function file_name_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to file_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in calibrate.
function calibrate_Callback(hObject, eventdata, handles)
% hObject    handle to calibrate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function target_kpa_Callback(hObject, eventdata, handles)
% hObject    handle to target_kpa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of target_kpa as text
%        str2double(get(hObject,'String')) returns contents of target_kpa as a double


% --- Executes during object creation, after setting all properties.
function target_kpa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to target_kpa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in set.
function set_Callback(hObject, eventdata, handles)
% hObject    handle to set (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
write(handles.s,append('s',num2str(round(handles.calibrator(10)+1024/33*(str2double(get(handles.target_kpa,'String'))+0.02))),'d'),'String');


% --- Executes on button press in manual.
function manual_Callback(hObject, eventdata, handles)
% hObject    handle to manual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
write(handles.s,'s0d','String');
write(handles.s,'p0d','String');
write(handles.s,'v90d','String');