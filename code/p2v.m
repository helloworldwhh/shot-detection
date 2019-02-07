video=VideoWriter('剪切视频-watch'); %生成新视频的名字
temp1='images\'; 
temp2='.jpg';
open(video);
for i = 1:61    %注意，执行这个程序的前提是你的E:\matlab\视频处理\文件里面有1~2000号图片。
    frame1=imread(strcat(temp1,num2str(watch(i)-2),temp2));
    frame2=imread(strcat(temp1,num2str(watch(i)-1),temp2));
    frame3=imread(strcat(temp1,num2str(watch(i)),temp2));
    frame4=imread(strcat(temp1,num2str(watch(i)+1),temp2));
    frame5=imread(strcat(temp1,num2str(watch(i)+2),temp2));
   
    writeVideo(video,frame1);  %读取一帧帧图片，并写成视频
    writeVideo(video,frame2);
    writeVideo(video,frame3);
    writeVideo(video,frame4);
    writeVideo(video,frame5);
end
close(video);
