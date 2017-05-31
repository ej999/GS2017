function [] = tableHandling(packet)
% After creating the csv file and writing to it from serial, this function
% is called. Takes RAW CSV file and checks each row of column 3 (see mission
% guideline for future use.
% 'glider'. Determines which table to fill on GUI.

fprintf('Entered Table')

%{
Container
---------------
1 - TeleTeamID
2 - CONTAINER
3 - TeleMissionTime
4 - TelePacketCount
5 - TeleAltSensor
6 - TeleTemp
7 - TeleVoltage
8 - TeleState
9 - TeleDeployed
10 - TeleLat
11 - TeleLong


Glider
-------------
1 - TeleTeamID
2 - GLIDER
3 - TeleMissionTime
4 - TelePacketCount
5 - TeleAltSensor
6 - TelePressure
7 - TeleSpeed
8 - TeleTemp
9 - TeleVoltage
10 - TeleHeading
11 - TeleState
12 - TeleNumPics

%}

global matrix

tele(12) = 0;
tele = strsplit(packet, ',')

%packet count
pk = tele(4);

if (tele(2) == 'Glider')
    matrix.glider(pk, 1) = tele(1);
    for i = 3:12
        matrix.glider(pk, i - 1) = tele(i)
    end
else
    matrix.container(pk, 1) = tele(1);
    for i = 3:12
        matrix.container(pk, i - 1) = tele(i)
    end
end
        updateGUI_gliderTable(handles,matrix.glider, pk)


end

