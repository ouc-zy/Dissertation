function varargout = SYS(varargin)
% SYS MATLAB code for SYS.fig
%      SYS, by itself, creates a new SYS or raises the existing
%      singleton*.
%
%      H = SYS returns the handle to a new SYS or the handle to
%      the existing singleton*.
%
%      SYS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SYS.M with the given input arguments.
%
%      SYS('Property','Value',...) creates a new SYS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SYS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SYS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SYS

% Last Modified by GUIDE v2.5 05-Feb-2018 20:37:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SYS_OpeningFcn, ...
                   'gui_OutputFcn',  @SYS_OutputFcn, ...
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


% --- Executes just before SYS is made visible.
function SYS_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SYS (see VARARGIN)

% Choose default command line output for SYS
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.edit4,'string','请选择','enable','off')
set(handles.edit5,'string','请选择','enable','off')
set(handles.edit6,'string','请选择','enable','off')
set(handles.edit7,'string','请选择','enable','off')
set(handles.pushbutton7,'string','起始时间')
set(handles.pushbutton8,'string','终止时间')
set(handles.pushbutton9,'string','渔船编号')
set(handles.pushbutton11,'string','航次编号')
set(handles.pushbutton10,'string','捕捞区统计热度图')
% set(handles.figure1,'enable','off')
% UIWAIT makes SYS wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.
function varargout = SYS_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1,'enable','on');


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
set(handles.text3,'string',get(handles.edit1,'string'));

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


% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --------------------------------------------------------------------
function m_file_Callback(hObject, eventdata, handles)
% hObject    handle to m_file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_help_Callback(hObject, eventdata, handles)
% hObject    handle to m_help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_help_log_Callback(hObject, eventdata, handles)
% hObject    handle to m_help_log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_help_relate_Callback(hObject, eventdata, handles)
% hObject    handle to m_help_relate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_8_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_import_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_import (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%     hds=guidata(hObject);
    pathname=uigetdir();
    if (pathname==0)  
        msgbox('您没有选择文件，请重新选择!','打开文件出错','error'); 
        return
    end
    handles.pathname=pathname;
    
    T=zeros(31,4);
    for i=1:31
    WH = waitbar(0,'正在读取数据','Name','读取文件...');
    waitbar(0.1);
    Sta=[pathname '\Excel'];
    Des=[pathname '\Rawdata'];
    tic;
    [Dir,StTime,EdTime]=Initialization(Sta,Des,i);
    handles.Dir=Dir;
    handles.StTime=StTime;
    handles.EdTime=EdTime;
    T(i,1)=toc;tic;
    waitbar(0.45);
    PortLocation(Des);
    waitbar(0.55);
    T(i,2)=toc;tic;
    VoyageDivision( Des );
    waitbar(0.75);
    T(i,3)=toc;tic;
    FishingAreaIdentification( Des )
    waitbar(1);
    T(i,4)=toc;
    delete(WH)
    end
    save([pathname '\test3'],'T')
    
    
    load([pathname '\Rawdata\FisheryAreaFromTrack\TotleFisheryArea.mat'])
    axes(handles.axes1);
    imshow(flipud(Map),[],'color',jet);
    msgbox('读取数据完毕！','确认');
    guidata(hObject, handles);
% --------------------------------------------------------------------
function m_file_save_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,PathName]=uiputfile({'*.jpg','JPEG(*.jpg)';'*.bmp','BMP(*.bmp)';...
    '*.gif','GIF(*.gif)'; '*.tif','TIF(*.tif)';'*.png','PNG(*.png)';'*.fig','FIG(*.fig)'},'保存图片','Untitled');
if FileName==0 
    return;
else 
    h=getframe(handles.axes1);
    imwrite(h.cdata,[PathName FileName]);
end;

% --------------------------------------------------------------------
function m_file_exit_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close()

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = zoom;
setAxesZoomMotion(h,handles.axes1,'both');%horizontal和vertical都放大
zoom on
set(h,'direction','in');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = zoom;
setAxesZoomMotion(h,handles.axes1,'both');%horizontal和vertical都缩小
zoom on
set(h,'direction','out');

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global uitoggletool1;
uitoggletool1=uitoggletool1+1;
if(mod(uitoggletool1,2)==1)
    datacursormode(gcf,'on');
else
    datacursormode(gcf,'off');
    Hbt=handles.uitoggletool1;%获取数据游标的句柄
    F=@uitoggletool1_OffCallback;%从这里调回到uitoggletool1_OffCallback回调函数运行
    feval(F,Hbt,eventdata,handles);
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1



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


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if ~isfield(handles,'Dir')
        msgbox('数据尚未导入','确认');
        return
    end
    StTime=datestr(handles.StTime);
    waitfor(uicalendar('InitDate',datetime(StTime(1:11),'Locale','en_US'),'DestinationUI', {handles.edit4, 'string'}))
    if isempty(get(handles.edit4,'string'))
        set(handles.edit4,'string','请选择')
    end
    guidata(hObject, handles);
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


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if ~isfield(handles,'Dir')
        msgbox('数据尚未导入','确认');
        return
    end
    EdTime=datestr(handles.EdTime);
    waitfor(uicalendar('InitDate',datetime(EdTime(1:11),'Locale','en_US'),'DestinationUI', {handles.edit5, 'string'}))
    if isempty(get(handles.edit5,'string'))
        set(handles.edit5,'string','请选择')
    end
    guidata(hObject, handles);
% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if ~isfield(handles,'Dir')
        msgbox('数据尚未导入','确认');
        return
    end
%     set(handles.figure1,'windowstyle','modal')
    set(handles.pushbutton7,'enable','off')
    set(handles.pushbutton8,'enable','off')
    set(handles.pushbutton9,'enable','off')
    set(handles.pushbutton10,'enable','off')
    set(handles.pushbutton11,'enable','off')
%     open('multiselect.fig')
    num=FishingBoatNumber(handles.Dir);
    handles.FBNumber=num;
%     set(handles.figure1,'windowstyle','normal')
    set(handles.pushbutton7,'enable','on')
    set(handles.pushbutton8,'enable','on')
    set(handles.pushbutton9,'enable','on')
    set(handles.pushbutton10,'enable','on')
    set(handles.pushbutton11,'enable','on')
    name=handles.Dir(num,1).name;
    pos=strfind(name,'.');
    set(handles.edit6,'string',name(1:pos-1))
    subtrack=SubTrack(handles.pathname,get(handles.edit4,'string'),get(handles.edit5,'string'),num);
    axes(handles.axes1);
    plot(subtrack(:,3),subtrack(:,2));
    guidata(hObject, handles);
% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if ~isfield(handles,'Dir')
        msgbox('数据尚未导入','确认');
        return
    end
    st=get(handles.edit4,'string');
    ed=get(handles.edit5,'string');
    if(strcmp(st,'请选择'))st=datestr(handles.StTime);end
    if(strcmp(ed,'请选择'))ed=datestr(handles.EdTime);end
    submap=ShowFishingArea(handles.pathname,st,ed);
    axes(handles.axes1);
    imshow(flipud(submap),[],'color',jet);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    if ~isfield(handles,'Dir')
        msgbox('数据尚未导入','确认');
        return
    end
    if(strcmp(get(handles.edit6,'string'),'请选择'))
        msgbox('渔船编号未选择','确认');
        return
    end
%     set(handles.figure1,'windowstyle','modal')
    set(handles.pushbutton7,'enable','off')
    set(handles.pushbutton8,'enable','off')
    set(handles.pushbutton9,'enable','off')
    set(handles.pushbutton10,'enable','off')
%     open('multiselect.fig')
    load([handles.pathname '\Rawdata\x' num2str(handles.FBNumber)]);
    Data=X;
    num=TrackNumber(Track);
    handles.TNumber=num;
%     set(handles.figure1,'windowstyle','normal')
    set(handles.pushbutton7,'enable','on')
    set(handles.pushbutton8,'enable','on')
    set(handles.pushbutton9,'enable','on')
    set(handles.pushbutton10,'enable','on')
    set(handles.edit7,'string',['第' num2str(num) '航次']);
    load([handles.pathname '\Rawdata\Table.mat']);
    load([handles.pathname '\Rawdata\FisheryAreaFromTrack\' Table{handles.FBNumber} '-' num2str(num)])
    step=60;
    axes(handles.axes1);
    cla
    hold on
    Max=max(max(MorphologyMatrix));
    [Y,X]=find(MorphologyMatrix>0);
    L=length(Y);
    for i=1:L
        y=(Y(i)-1)/step+s;
        x=(X(i)-1)/step+w;
        l=1/step;
        rectangle('Position',[x,y,l,l],'facecolor',[0.6,0.6,0.6],'EdgeColor',[0.6,0.6,0.6]);
    %     rectangle('Position',[y,x,w,l],'facecolor',[1,1,1],'EdgeColor',[1,1,1]);
    end
    plot(Data(Track(num,1):Track(num,2),3),Data(Track(num,1):Track(num,2),2))
    hold off
    guidata(hObject, handles);


function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function uipushtool5_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uitoggletool4_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uitoggletool4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
