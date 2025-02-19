clear
clc
tic
load('Yale_32x32.mat')
fea=im2double(fea);
fea = NormalizeFea(fea); 
X=fea';
C=15; 
m=165;
n=1024;
l=45;

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
    W=  constructW(fea,options);

    opt=[];
    opt.lambda=1;
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