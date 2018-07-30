% generate dicriminative images using features
clear;clc;    
load('zhou_dis.mat');
load('zhou_disorig.mat');
img1=imread('zhou_t_crop.jpg');
img2=imread('zhou_f_crop.jpg');    
disAB=disnew-cos_sim;  
AB = zeros(size(img1,1),size(img1,2));
k=0;
stride1 = 1;
stride2 = 1;
kernel_h = 8;
kernel_w = 8;
for i = 1:stride1:(size(img1,1) - kernel_h + 1)
    for j = 1:stride2:(size(img1,2) - kernel_w + 1)
        k=k+1;
        AB(i: i + kernel_h - 1, j: j + kernel_w - 1) =  AB(i: i + kernel_h - 1, j: j + kernel_w - 1) +disAB(k);
    end
end
rangee=[0 2.9530];
AB(AB<0)=0;



AB = map2jpg(AB,rangee, 'jet');
curABMap1 = im2double(img1)*0.5+AB*0.5;
curABMap2 = im2double(img2)*0.5+AB*0.5;
peopleres = [];
curResult = [im2double(img1) ones(size(img1,1),10,3) curABMap1];
peopleres = [peopleres; curResult; ones(10,size(curResult,2),3)];
curResult = [im2double(img2) ones(size(img2,1),10,3) curABMap2];
peopleres = [peopleres; curResult;];
imshow(peopleres);drawnow;
imwrite(peopleres,['zhou.jpg']);
 

