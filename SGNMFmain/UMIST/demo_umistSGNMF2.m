clear
clc
tic
load('UMIST.mat')
fea=fea';
gnd=gnd';
N=20;%总类数
nk=20;%选取的类数
m1=19;%每类所包含的图片数
%[fea1,gnd1]=xuanmnistrand(fea,gnd,N,nk,m1);
[fea1,gnd1]=xuanmnist(fea,gnd,N,nk,m1);
fea1= NormalizeFea(fea1); 
%fea1=fea1';
X=fea1';
%gnd1=gnd1';
C=20; 
m=380;
n=1024;
l=60;

alpha_search=[1];
K_search = 3;
lambda=100;
re=zeros(10,5);

%lambda_search = [0];
%lambda_search=[0,0.001,0.01,0.1,1,10,100,1000]; % label informatin 
%mu_search=[0,0.001,0.01,0.1,1,10,100,1000]; % graph information
for cn=1:10
    %构造图初始化
    options = [];
    options.NeighborMode = 'KNN';
    options.k = 3;
    options.WeightMode = 'HeatKernel';
    options.t = 1;
    W=  constructW(fea1,options);

    opt=[];
    opt.lambda=1;
    opt.eps=1e-5;
    opt.Maxiter=100;

   % [U,V,E,errs,errs1]=SGNMF2(X,C,opt,W);
   [U,V,E,errs,errs1]=SGNMF_S(X,C,opt,W);

    H=V;
    
    %l=60;
    Hnew=H;
    nClass=C;
    gndnew=gnd1;
    % Hnew=H(l+1:end,:);
    % nClass=C;
    % gndnew=gnd(l+1:end);

    accuracy = eval_clustering_accuracy(Hnew',gndnew,nClass,50);
    re(cn,:)= [accuracy.mi accuracy.purity accuracy.nmi accuracy.f_val accuracy.acc]
               

end
Y = tsne(V);                  % 得到的矩阵为Nx2，N为N个样本，Y矩阵为320x2
gscatter(Y(:,1), Y(:,2),gnd1);% 若无label输入，则画出的图没有色彩区分

toc