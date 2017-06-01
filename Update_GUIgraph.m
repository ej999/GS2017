function [] = Update_GUIgraph(handles, table_filename)
% First fill the tables with appropriate columns.
% This function then takes the data in the table and plots it with
% specifications from the axis popup menus.
global matrix;
handles.gliderData = matrix.glider
handles.containerData = matrix.container

xAxis = get(handles.graphxAxis, 'Value');
yAxis = get(handles.graphyAxis, 'Value');


handles.xGlider = handles.gliderData(:,xAxis+2);
handles.yGlider = handles.gliderData(:,yAxis+2);
cla(handles.Graph1);
handles.xContainer = handles.containerData(:,xAxis+2);
handles.yContainer = handles.containerData(:,yAxis+2);

grid(handles.Graph1, 'on');

plot(handles.xGlider, handles.yGlider, '-b','Parent', handles.Graph1);
hold(handles.Graph1,'on');
plot(handles.xContainer, handles.yContainer, '-r','Parent', handles.Graph1);
% plot(cell2mat(handles.xGlider), cell2mat(handles.yGlider), '.','Parent', handles.Graph1);
% %plot(cell2mat(handles.xContainer), cell2mat(handles.yContainer), '.', 'Parent', handles.Graph1);

end

