function [] = Update_GUIgraph(handles, table_filename)
% First fill the tables with appropriate columns.
% This function then takes the data in the table and plots it with
% specifications from the axis popup menus.
global matrix;

handles.gliderData = matrix.glider;
handles.containerData = matrix.container;
xAxis = get(handles.graphxAxis, 'Value');
yAxis = get(handles.graphyAxis, 'Value');
%-- 
switch xAxis
    case 1
        handles.xContainer = handles.containerData(:,3);
    case 2
        handles.xContainer = handles.containerData(:,4);
    case 3
        handles.xContainer = handles.containerData(:,5);
    case 6
        handles.xContainer = handles.containerData(:,6);
    case 7
        handles.xContainer = handles.containerData(:,7);
    otherwise 
        handles.xContainer = 0;
end
switch yAxis
    case 1
        handles.yContainer = handles.containerData(:,3);
    case 2
        handles.yContainer = handles.containerData(:,4);
    case 3
        handles.yContainer = handles.containerData(:,5);
    case 6
        handles.yContainer = handles.containerData(:,6);
    case 7
        handles.yContainer = handles.containerData(:,7);
    otherwise 
        handles.yContainer = 0;
end
%--

handles.xGlider = handles.gliderData(:,xAxis+2);
handles.yGlider = handles.gliderData(:,yAxis+2);
cla(handles.Graph1);

grid(handles.Graph1, 'on');
plot(handles.xGlider, handles.yGlider, '.-b','Parent', handles.Graph1);
hold(handles.Graph1,'on');

if (handles.xContainer & handles.yContainer) ~= 0
    plot(handles.xContainer, handles.yContainer, '.-r','Parent', handles.Graph1);
end
end

