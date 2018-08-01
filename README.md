# Deep-Difference-Analysis-in-Similar-looking-face-recognition
This is the code of ICPR 2018 paper《Deep Difference Analysis in Similar-looking Face Recognition》.

Using this code, you can visualize the difference in similar-looking Faces. 
That is, we find the most different region between two similar-looking Faces judged by the network.   

# Usage Instructions
### Install caffe
1. Install [caffe](https://github.com/BVLC/caffe).
2. compile caffe and matcaffe (matlab wrapper for caffe)
```
make all -j4
make matcaffe
```
### Download the code and model
1. Download the code. 
```
git clone https://github.com/zhongyy/Deep-Difference-Analysis-in-Similar-looking-face-recognition.git
```
2. Download the pretrained model and put it in the root fold. 

The model could be download from [Baiduyun](https://pan.baidu.com/s/19FHYCmDCAKjgNmJVMOvJgA). password: dmo1 

### run the demo 

#### We provide an example of Chow Yun Fat and a stand-in for him. Using the code, you get the result shown in paper Figure 2.

1. Extract the features of Face images.

As we provide the related images and in-process data, you could run extract_zhou.m and then run generate_zhou.m to get the result from scratch. 

Note that some code related to your own caffe path should be changed. 
```
matlab extract_zhou.m
matlab generate_zhou.m
```
2. If it is hard for you to run feature extraction code related to Matcaffe, you can run generate_zhou.m using some in-process data. 
```
matlab generate_zhou.m
```
3. The result should be like as follows.

![Image of zhou](https://github.com/zhongyy/Deep-Difference-Analysis-in-Similar-looking-face-recognition/blob/master/zhou.jpg)

### To reproduce Figure 4 in the paper

#### We provide the aligned images. This result is shown in paper Figure 4.

1. Extract the features of Face images. 

As we provide the related images and in-process data, you could run extract.m and then run generate.m to get the result from scratch. 

Note that some code related to your own caffe path should be changed. 
```
matlab extract.m
matlab generate.m
```
2. If it is hard for you to run feature extraction code related to Matcaffe, you can run generate.m using some in-process data. 
```
matlab generate.m
```
3. The result should be like as follows.

![Images](https://github.com/zhongyy/Deep-Difference-Analysis-in-Similar-looking-face-recognition/blob/master/Result/1.jpg)
![Images](https://github.com/zhongyy/Deep-Difference-Analysis-in-Similar-looking-face-recognition/blob/master/Result/4.jpg)
![Images](https://github.com/zhongyy/Deep-Difference-Analysis-in-Similar-looking-face-recognition/blob/master/Result/10.jpg)

![Images](https://github.com/zhongyy/Deep-Difference-Analysis-in-Similar-looking-face-recognition/blob/master/Result/13.jpg)
![Images](https://github.com/zhongyy/Deep-Difference-Analysis-in-Similar-looking-face-recognition/blob/master/Result/14.jpg)
![Images](https://github.com/zhongyy/Deep-Difference-Analysis-in-Similar-looking-face-recognition/blob/master/Result/15.jpg)
