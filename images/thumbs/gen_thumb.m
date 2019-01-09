clear
close all

file_list=[dir('*.jpg');dir('*.png')];

for i=1:length(file_list)
    img=imread(file_list(i).name);
    [h,w,c]=size(img);
    if max(h,w)>640
        img=imresize(img,640.0/double(max(h,w)));
        imwrite(img,strcat(file_list(i).name(1:end-3),'jpg'),'Quality',80)
    end
end