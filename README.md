# Deep-Difference-Analysis-in-Similar-looking-face-recognition
This is the code of ICPR 2018 paper《Deep Difference Analysis in Similar-looking Face recognition》.

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
3. Download the code. 
```
git clone https://github.com/zhongyy/Deep-Difference-Analysis-in-Similar-looking-face-recognition.git
```
4. Download the pretrained model and put it in the root code. The model could be download from [Baiduyun](https://pan.baidu.com/s/19FHYCmDCAKjgNmJVMOvJgA). password: dmo1 

5. Extract the features of Face images. We provide an example of Chow Yun Fat and a stand-in for him.
### run the demo
As we provide the related images and in-process data, you could run extract_zhou.m and then run generate_zhou.m to get the result from scratch, or you could either run generate_zhou.m using some in-process data. 

Note that some code related to your own path should be changed. 
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
