counth=0;
countp=0;
countc=0;
for i=1:size(watch)
    if ismember(watch(i),hist_res)
        counth=counth+1;
    end
    if ismember(watch(i),pix_res)
        countp=countp+1;
    end
    if ismember(watch(i),con_res)
        countc=countc+1;
    end
end