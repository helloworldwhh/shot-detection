%get the result
for i=1:4064 %num of frames
    s=0; % The intersection of histograms
    count1=0; %num of pixels whose difference > 30
    f1=strcat(num2str(i));
    f2=strcat(num2str(i+1));
    image1=strcat(f1,'.jpg'); %filename of image1
    image2=strcat(f2,'.jpg');  %filename of image2
    po1=imread(image1); 
    po2=imread(image2);
    po1=rgb2gray(po1); % turn the image from rgb to grey
    po2=rgb2gray(po2);
    pp1=imhist(po1);  % get the histograms of the image
    pp2=imhist(po2);
    for k=1:256      
        s=s+min([pp1(k),pp2(k)]); % get the interdection of histograms
    end
    dif=po2-po1; % the difference of two images
    for j = 1:426*240
        if dif(j)>=30
            count1=count1+1; %get the number of pixels whose difference > 30
        end
    end
    
    if count1>10000 && abs((s/102240)-1)>0.20 %get the results by combine two algorithm
    %if count1>10000 %get the result using difference of pixels
    %if abs((s/102240)-1)>0.20 %get the result using the intersection of histograms
        disp(1+i);
    end  
end   

