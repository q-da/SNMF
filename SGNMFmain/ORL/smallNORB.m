% xiter做P，xiter做W，Xiter分解，gnditer
%现在先投影再分类
clear
clc

% load and 
%load COIL20.mat
load smallNORB-32x32.mat
N=10;%总类数
nk=10;%选取的类数
m1=100;%每类所包含的图片数
[feank,gndnk]=xuanmnist(fea,gnd,N,nk,m1);
feank=im2double(feank);%将数据归一化到0-1之间
gndnk=gndnk+1;%变成1-10，而不是0-9
X=feank';
C=10; 
m=1000;
n=784;
l=30;

alpha_search=1;
K_search = 3;

re=zeros(10,5);

%lambda_search = [0];
%lambda_search=[0,0.001,0.01,0.1,1,10,100,1000]; % label informatin 
%mu_search=[0,0.001,0.01,0.1,1,10,100,1000]; % graph information

for alpha=alpha_search
    for K=K_search
        clear res
           
            para.alpha=alpha;
            para.k=C;
            para.maxiter=100;
            para.alpha0=0;
            para.alpha1=1;
            para.lambda1=1000;
            para.lambda2=1000;

                [Xiter,gnditer]=randpermData(X,gndnk,C,m,l);
                
                P_old2=zeros(l,C);     
                for ss=1:C                 
                    for cc=1:l          
                        if gnditer(cc,1)==ss 
                            P_old2(cc,ss)=1;
                        end
                    end
                end
                I_S=eye(m-l);      
                P2=zeros(m,m-l+C);
                P2(1:l,1:C)=P_old2;
                P2(l+1:end,C+1:end)=I_S;

                % P2(end-l+1:end,end-C+1:end)=P_old2;%把最后一个区域也变成块
                % PI=P_old2*P_old2';%对应的权重放大成1
                
                [~, W2, ~] = CAN(Xiter, C, K);
                % options = [];
                % options.NeighborMode = 'KNN';
                % options.k = 3;
                % options.WeightMode = 'HeatKernel';
                % options.t = 1;
                % W2=  constructW(Xiter,options);

                %W2=refineW(W2,l,C);%W_{ab}
                
                % W2(end-l+1:end,end-l+1:end)=PI;%把最后一块的信息也放大

                A2=diag(sum(W2,2));%D_{ab}
                L2=A2-W2;
                
                [Xiter1,gnditer]=randpermData1(feank,gndnk,C,m,l);                
                
 %P_old=zeros(l,C);原来1024*1440时的样本矩阵，现在是1440 *1024的样本矩阵
 P_old1=zeros(l,C);
for ss=1:C                 
    for cc=1:l          
        if gnditer(cc,1)==ss 
            %P_old(cc,ss)=1;
            P_old1(cc,ss)=1;
        end
    end
end
                                  
I_S=eye(n-l);      
%P=zeros(m,m-l+C);%n=1440
P1=zeros(n,n-l+C);
P1(1:l,1:C)=P_old1;
P1(l+1:end,C+1:end)=I_S;
                
%[~, W1, ~] = CAN(Xiter1, C, K);%容易报错，干脆不要he original graph has more than 10 connected component
% options = [];
%                 options.NeighborMode = 'KNN';
%                 options.k = 3;
%                 options.WeightMode = 'HeatKernel';
%                 options.t = 1;
%                 W1=  constructW(Xiter1,options);
% W1=refineW(W1,l,C);%W_{ab}
% A1=diag(sum(W1,2));%D_{ab}
% L1=A1-W1;

            for cn=1:10%迭代十次结果
                %[U,V]=ABNMTF(X,P1,P2,para,A2,W2,l);
                [U,V]=DABNMTF(Xiter,P1,P2,para,L2,l);%双边
                H=V;
                Hnew=H(l+1:end,:);
                nClass=C;
                gndnew=gnditer(l+1:end);
                % 
                accuracy = eval_clustering_accuracy(Hnew',gndnew,nClass,50);
                re(cn,:)= [accuracy.mi accuracy.purity accuracy.nmi accuracy.f_val accuracy.acc]
           
            end
    end
end
