function [pos_x, pos_y] = positionDetermination(pk)
    vel = matrix.glider(:,6); % Velocity from pitot tube
    heading = matrix.glider(:,9); % Direction from magnometer (degrees)
    pitch = matrix.glider(:,13); % Placeholder for pitch data (degrees)

    dx(pk) = vel(pk) * cosd(heading(pk)) * cosd(pitch(pk)); % Change in x,y,z position over 1 second update interval
    dy(pk) = vel(pk) * sind(heading(pk)) * cosd(pitch(pk));
    dz(pk) = vel(pk) * sind(pitch(pk));

    pos_x(pk) = cumsum(dx(pk)); % Summation of delta changes in x,y,z position
    pos_y(pk) = cumsum(dy(pk));
    pos_z(pk) = cumsum(dz(pk));
    
    lat_pos(pk) = (pos_x(pk) / 111000) + releaseLat;
    lon_pos(pk) = (pos_y(pk) / (111000 * cos(32.25))) + releaseLon;

end

%     tx = cumsum(dx); % Plots full trajectory
%     ty = cumsum(dy);
%     tz = cumsum(dz);
%     plot3(tx,ty,tz) 

