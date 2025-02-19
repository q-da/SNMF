clear
clc
tic
% load and 
load COIL20.mat
fea = NormalizeFea(fea); 
X=fea';
C=20; 
n=1440;
l=60;

re=zeros(10,5);
for cn=1:10
    %构造图初始化
    options = [];
    options.NeighborMode = 'KNN';
    options.k = 3;
    options.WeightMode = 'HeatKernel';
    options.t = 1;
    W=  constructW(fea,options);

    opt=[];
    opt.lambda=1;
    opt.eps=1e-5;
    opt.Maxiter=100;

   [U,V,errs,errs1]=EGNMF1(X,C,opt,W);

    H=V;
    
    %l=60;
    Hnew=H;
    nClass=C;
    gndnew=gnd;
    % Hnew=H(l+1:end,:);
    % nClass=C;
    % gndnew=gnd(l+1:end);

    accuracy = eval_clustering_accuracy(Hnew',gndnew,nClass,50);
    re(cn,:)= [accuracy.mi accuracy.purity accuracy.nmi accuracy.f_val accuracy.acc]
end
Y = tsne(V);                  % 得到的矩阵为Nx2，N为N个样本，Y矩阵为320x2
gscatter(Y(:,1), Y(:,2),gnd);% 若无label输入，则画出的图没有色彩区分

toc