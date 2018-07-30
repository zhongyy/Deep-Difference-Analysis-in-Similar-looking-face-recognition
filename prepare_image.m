function im_data = prepare_image(im)
% ------------------------------------------------------------------------
IMAGE_DIM1 = 133;
IMAGE_DIM2 = 144;
 mean_data = zeros(133,144,3);
 mean_data(:,:,1)=127.5;
 mean_data(:,:,2)=127.5;
 mean_data(:,:,3)=127.5;
%  Convert an image returned by Matlab's imread to im_data in caffe's data
% format: W x H x C with BGR channels
im_data = im(:, :, [3, 2, 1]);  % permute channels from RGB to BGR
im_data = permute(im_data, [2, 1, 3]);  % flip width and height
im_data = double(im_data);  % convert from uint8 to single
im_data = imresize(im_data, [IMAGE_DIM1 IMAGE_DIM2], 'bilinear');  % resize im_data
im_data = im_data-mean_data;
im_data = im_data/128.0;