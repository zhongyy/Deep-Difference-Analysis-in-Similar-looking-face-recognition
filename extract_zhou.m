% extract features from the network
clear;clc;
addpath('/home/zhongyaoyao/caffe-master/matlab'); % change your own caffe path
net_weights = ['model_iter_33000.caffemodel'];
net_model = ['deployNEW.prototxt'];
caffe.set_mode_gpu();
net = caffe.Net(net_model, net_weights, 'test'); 

img1=imread('zhou_t_crop.jpg');
img2=imread('zhou_f_crop.jpg');
scores1 = net.forward({prepare_image(img1)});
feature1 = net.blobs('fc5').get_data();
scores2 = net.forward({prepare_image(img2)});
feature2= net.blobs('fc5').get_data();
cos_sim = compute_cosine_score(feature1,feature2);
save('zhou_disorig.mat','cos_sim');
img1_stride=[];
img2_stride=[];
stride1 = 1;
stride2 = 1;
kernel_h = 8;
kernel_w = 8;
disnew=[];
for i = 1:stride1:(size(img1,1) - kernel_h + 1)
     for j = 1:stride2:(size(img1,2) - kernel_w + 1)
         img_temp1=img1;
         img_temp2=img2;
         img_temp2(i: i + kernel_h - 1, j: j + kernel_w - 1,:) = 127.5;
         img_temp1(i: i + kernel_h - 1, j: j + kernel_w - 1,:) = 127.5;
         scores1 = net.forward({prepare_image(img_temp1)});
         feature1 = net.blobs('fc5').get_data();
         scores2 = net.forward({prepare_image(img_temp2)});
         feature2= net.blobs('fc5').get_data();
         cos_sim = compute_cosine_score(feature1,feature2);
         disnew=[disnew cos_sim];
     end
end
save('zhou_dis.mat','disnew');
