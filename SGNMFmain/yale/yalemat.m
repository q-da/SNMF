function figtonum(W,H)
pt='D:\Matlabpro\shujuji\yale\'; %yale数据集的路径
ext='*.bmp';  
dis=dir([pt ext]);  
nms={dis.name};
lennms=length(nms);
idxya=[];
dataya=[];
 for k=1:lennms
     name_temp=strtok(nms{k},'_');%返回nms{k}中以'_'为分割符的前面一部分
     rd=regexp(name_temp,'\d');%确定name_temp中数值的位置
     name_id=name_temp(rd);%找出name_temp中位置是rd的数，返回字符格式
     sd=str2num(name_id);%将name_id转化成double类型.
     idxya=[idxya;sd]; 
     nm1=[pt nms{k}];  
     I1=imread(nm1); %将图片nm1变成数据，I1是一个矩阵;如果是彩色图片的话输出的是三维数组，变成灰度图的方法rgb2gray(I1)
     I2=im2double(I1);%将I1变成double的且每个分量除以255，映射到0-1之间
     I3=imresize(I2,[W, H]);%将原图片压缩成Ww*Hh大小的
     I4=reshape(I3,1,[]);%将I3变成1行，Ww乘Hh列的数组
     dataya=[dataya;I4];
 end
 if exist('datayale.mat')
    delete('datayale.mat'); % 删除mat文件datayale.mat
end
 save datayale dataya idxya;