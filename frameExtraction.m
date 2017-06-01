function [] = frameExtraction()
% Alternatively, you can take filename as a parameter.
    tic
    file = 'source.mp4';
    video=VideoReader(file);
    totalFrames = video.Numberofframes();
    steps = ceil(totalFrames/20)
%     while steps*20 <=totalFrames
%         steps = steps+1;
%     end
    for f=1:steps:totalFrames  
      image=read(video,f);
      thisfile=sprintf('frame_%d.jpg',f);
      imwrite(image,thisfile);
    end
    toc
end
