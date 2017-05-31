function [] = updateGUI_containerTable(handles, dataMatrixContainer, pk)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
data = dataMatrixContainer(1:pk,1:11);
set(handles.uitableContainer, 'Data', data);
end

