function [ ] = positionDetermination(pk)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

    %Take into account 3D height change effects

    %global matrix
    vel = matrix.glider(:,6)

    dir = matrix.glider(:,9);
    
    vx = vel * cosd(dir);
    vy = vel * sind(dir);
    

    
    
end

