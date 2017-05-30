%csvfile = fopen('test.csv','a+');
clc
format longG;
[dataMatrixNum, dataMatrixText, dataMatrixRaw] = xlsread('28-May-2017 16_54_47.csv');
[rows, cols] = size(dataMatrixRaw)

dataMatrixGlider = [];
tic
for i = 1:1:rows
    if ismember('glider',dataMatrixRaw(i,2))
        display('Stop sending Container')
        dataMatrixGlider = [dataMatrixGlider; dataMatrixRaw(i,:)]
    else
        dataMatrixRaw(i,2);
    end
end
toc


