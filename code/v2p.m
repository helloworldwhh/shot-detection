%To read video frames.
clc
clear 
close all

fileName = 'movie.mp4';  %name of the file
obj = VideoReader(fileName); 
numFrames = obj.NumberOfFrames;  %get the number of the frame                     
for i = 1 : numFrames      
    frame = read(obj,i);                                                                     
    imwrite(frame,strcat(num2str(i),'.jpg'),'jpg');  %write evey frame as a jpg
end
