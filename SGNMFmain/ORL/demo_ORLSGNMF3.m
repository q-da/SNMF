clear
clc
tic
load ORL_32x32.mat
%load COIL100.mat
%load mnist.mat
fea = NormalizeFea(fea); 

alpha_search=[1];
K_search = 5;
lambda=10000;

re=zeros(10,5);
limian=zeros(4,5);
for cn=1:10
for cr=1:4
feank=fea(1+(cr-1)*100:cr*100,:);
gndnk=gnd(1+(cr-1)*100:cr*100,:)-(cr-1)*10;
feank=im2double(feank);%将数据归一化到0-1之间
feank = NormalizeFea(feank);
X=feank';
C=10; 
m=100;
n=1024;
l=30;
    %构造图初始化
    options = [];
    options.NeighborMode = 'KNN';
    options.k = 3;
    options.WeightMode = 'HeatKernel';
    options.t = 1;
    W=  constructW(feank,options);

    opt=[];
    opt.lambda=0.1;
    opt.eps=1e-5;
    opt.Maxiter=100;

   % [U,V,UZ,VZ,errs,errs1]=SGNMF3(X,C,opt,W);
    [U,V,UZ,VZ,errs,errs1]=SGNMF_T(X,C,opt,W);

    H=V;
    %H=(V./VZ+eps)./((VZ./V+eps)+eps);
    %H=10*V+VZ;
    %l=60;
    Hnew=H;
    nClass=C;
    gndnew=gndnk;
    % Hnew=H(l+1:end,:);
    % nClass=C;
    % gndnew=gnd(l+1:end);

    accuracy = eval_clustering_accuracy(Hnew',gndnew,nClass,50);
    limian(cr,:)= [accuracy.mi accuracy.purity accuracy.nmi accuracy.f_val accuracy.acc]
               
end
re(cn,:)= mean(limian)
end
toc
Y = tsne(V);                  % 得到的矩阵为Nx2，N为N个样本，Y矩阵为320x2
gscatter(Y(:,1), Y(:,2),gndnk);% 若无label输入，则画出的图没有色彩区分