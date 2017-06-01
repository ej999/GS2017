function [] = frameExtraction()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
file = 'source.mp4';
video=VideoReader(file);
    for f=1:20
      image=read(video,f);
      thisfile=sprintf('frame_%04d.jpg',f);
      imwrite(image,thisfile);
    end
end
