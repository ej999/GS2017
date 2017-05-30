function [] = tableHandling(csvExt)
% After creating the csv file and writing to it from serial, this function
% is called. Takes RAW CSV file and checks each row of column 3 (see mission
% guideline for future use.
% 'glider'. Determines which table to fill on GUI.

    [dataMatrixNum, dataMatrixText, dataMatrixRaw] = xlsread(csvExt);
    [rows, cols] = size(dataMatrixRaw);

    dataMatrixGlider= [];
    for i = 1:1:rows
        dataMatrixRaw(i,2);
        if ismember('glider',dataMatrixRaw(i,2))
            % When it gets to the row with glider, I want 
            % to create a new matrix and save each value
            % including and after to the new Glider Data
            % matrix.

            dataMatrixGlider = [dataMatrixGlider; dataMatrixRaw(i,:)];
      
            updateGUI_gliderTable(handles,dataMatrixGlider)
        else
            % call update Container table
        end
    end
end

