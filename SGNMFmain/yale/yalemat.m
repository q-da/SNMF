function figtonum(W,H)
pt='D:\Matlabpro\shujuji\yale\'; %yale���ݼ���·��
ext='*.bmp';  
dis=dir([pt ext]);  
nms={dis.name};
lennms=length(nms);
idxya=[];
dataya=[];
 for k=1:lennms
     name_temp=strtok(nms{k},'_');%����nms{k}����'_'Ϊ�ָ����ǰ��һ����
     rd=regexp(name_temp,'\d');%ȷ��name_temp����ֵ��λ��
     name_id=name_temp(rd);%�ҳ�name_temp��λ����rd�����������ַ���ʽ
     sd=str2num(name_id);%��name_idת����double����.
     idxya=[idxya;sd]; 
     nm1=[pt nms{k}];  
     I1=imread(nm1); %��ͼƬnm1������ݣ�I1��һ������;����ǲ�ɫͼƬ�Ļ����������ά���飬��ɻҶ�ͼ�ķ���rgb2gray(I1)
     I2=im2double(I1);%��I1���double����ÿ����������255��ӳ�䵽0-1֮��
     I3=imresize(I2,[W, H]);%��ԭͼƬѹ����Ww*Hh��С��
     I4=reshape(I3,1,[]);%��I3���1�У�Ww��Hh�е�����
     dataya=[dataya;I4];
 end
 if exist('datayale.mat')
    delete('datayale.mat'); % ɾ��mat�ļ�datayale.mat
end
 save datayale dataya idxya;