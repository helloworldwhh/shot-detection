video=VideoWriter('������Ƶ-watch'); %��������Ƶ������
temp1='images\'; 
temp2='.jpg';
open(video);
for i = 1:61    %ע�⣬ִ����������ǰ�������E:\matlab\��Ƶ����\�ļ�������1~2000��ͼƬ��
    frame1=imread(strcat(temp1,num2str(watch(i)-2),temp2));
    frame2=imread(strcat(temp1,num2str(watch(i)-1),temp2));
    frame3=imread(strcat(temp1,num2str(watch(i)),temp2));
    frame4=imread(strcat(temp1,num2str(watch(i)+1),temp2));
    frame5=imread(strcat(temp1,num2str(watch(i)+2),temp2));
   
    writeVideo(video,frame1);  %��ȡһ֡֡ͼƬ����д����Ƶ
    writeVideo(video,frame2);
    writeVideo(video,frame3);
    writeVideo(video,frame4);
    writeVideo(video,frame5);
end
close(video);
