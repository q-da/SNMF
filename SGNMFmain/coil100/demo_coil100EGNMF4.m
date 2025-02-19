clear
clc
tic
% load and 
load COIL100.mat
fea=im2double(fea);
fea = NormalizeFea(fea); 
X=fea';
C=20; 
n=1440;
l=60;

re=zeros(10,5);
limian=zeros(5,5);

for cn=1:10
for cr=1:5
feank=fea(1+(cr-1)*1440:cr*1440,:);
gndnk=gnd(1+(cr-1)*1440:cr*1440,:)-(cr-1)*20;
feank=im2double(feank);%将数据归一化到0-1之间
feank = NormalizeFea(feank);
X=feank';
C=20; 
    %构造图初始化
    options = [];
    options.NeighborMode = 'KNN';
    options.k = 3;
    options.WeightMode = 'HeatKernel';
    options.t = 1;
    W=  constructW(feank,options);

    opt=[];
    opt.lambda=1;
    opt.eps=1e-5;
    opt.Maxiter=100;

   [U,V,UZ,VZ,errs,errs1]=EGNMF4(X,C,opt,W);
    H=V;
    %H=(V./VZ)./(VZ./V);(V./VZ+eps)./((VZ./V+eps)+eps);
    % H=10*V+VZ;
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