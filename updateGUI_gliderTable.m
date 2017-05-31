function [] = updateGUI_gliderTable(handles, dataMatrixGlider, pk)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
data = dataMatrixGlider(1:pk,1:12);
set(handles.uitableGlider, 'Data', data);
end

