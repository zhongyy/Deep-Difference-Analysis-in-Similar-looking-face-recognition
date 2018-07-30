# Deep-Difference-Analysis-in-Similar-looking-face-recognition
This is the code of paper《Deep Difference Analysis in Similar-looking Face recognition》.

Using this code, you can visualize the difference between similar-looking Faces. 

# Usage Instructions
### Install caffe
1. Install [caffe](https://github.com/BVLC/caffe).
2. compile caffe and matcaffe (matlab wrapper for caffe)
```
make all -j4
make matcaffe
```
3. Extract the features of Face images. We provide an example of Chow Yun Fat and a stand-in for him.
### run the demo
As we provide the related images and in-process data, you could run extract_zhou.m and then run generate_zhou.m to get the result from scratch, or you could either run generate_zhou.m using some in-process data. Note that some code related to your own path should be changed. 
```
matlab extract_zhou.m
matlab generate_zhou.m
```
or
```
matlab generate_zhou.m
```
The result should be like as follows.
![Image of zhou](https://github.com/zhongyy/Deep-Difference-Analysis-in-Similar-looking-face-recognition/blob/master/zhou.jpg)
