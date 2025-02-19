% xiter做P，xiter做W，Xiter分解，gnditer
%现在先投影再分类
clear
clc
tic
% load and 
load src_x.mat
fea=src_x;
load src_y.mat
gnd=src_y;

fea = NormalizeFea(fea);

alpha_search=[1];
K_search = 3;
lambda=1300;

re=zeros(10,5);
limian=zeros(20,5);
for cn=1:10
for cr=1:20
feank=fea(1+(cr-1)*70:cr*70,:);
gndnk=gnd(1+(cr-1)*70:cr*70,:)-(cr-1)*10;
feank=im2double(feank);%将数据归一化到0-1之间
feank = NormalizeFea(feank);
X=feank';
C=10; 
m=70;
n=1024;
l=30;
for alpha=alpha_search
    for K=K_search
        clear res

            para.alpha=alpha;
            para.k=C;
            para.maxiter=100;
            para.alpha0=0;
            para.alpha1=1;
            para.lambda1=1000;
            para.lambda2=lambda;

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
                %                 options = [];
                % options.NeighborMode = 'KNN';
                % options.k = 3;
                % options.WeightMode = 'HeatKernel';
                % options.t = 1;
                % W2=  constructW(Xiter',options);

                %W2=refineW(W2,l,C);%W_{ab}
                
                % W2(end-l+1:end,end-l+1:end)=PI;%把最后一块的信息也放大

                A2=diag(sum(W2,2));%D_{ab}
                L2=A2-W2;
                
                %[Xiter1,gnditer1]=randpermData1(fea,gnd,C,m,l);                
                
 %P_old=zeros(l,C);原来1024*1440时的样本矩阵，现在是1440 *1024的样本矩阵
 P_old1=zeros(l,C);
for cc=1:l                  
    for  ss=1:C        
        if gnditer(cc,1)==ss
             P_old1(cc,ss)=1;
        end
    end
end
                                  
I_S=eye(n-l);      
%P=zeros(m,m-l+C);%n=1440
P1=zeros(n,n-l+C);
P1(1:l,1:C)=P_old1;
P1(1:C,1:C)=P_old2(1:C,1:C)';
P1(l+1:end,C+1:end)=I_S;
                
% [~, W1, ~] = CAN(Xiter1, C, K);
% % options = [];
% %                 options.NeighborMode = 'KNN';
% %                 options.k = 3;
% %                 options.WeightMode = 'HeatKernel';
% %                 options.t = 1;
% %                 W1=  constructW(Xiter1',options);
% 
% W1=refineW(W1,l,C);%W_{ab}
% A1=diag(sum(W1,2));%D_{ab}
% L1=A1-W1;


                %[U,V]=ABNMTF(X,P1,P2,para,A2,W2,l);
                % [U,V,err]=DABNMTF(Xiter,P1,P2,para,L2,l);%双边
                %[U,V,err]=DPABNMTF(X,P1,P2,para,L2,l);
                [U,V,err]=USV(Xiter,P1,P2,para,L2,l);
                H=V;
                Hnew=H(l+1:end,:);
                nClass=C;
                gndnew=gnditer(l+1:end);
                % 
                accuracy = eval_clustering_accuracy(Hnew',gndnew,nClass,50);
                limian(cr,:)= [accuracy.mi accuracy.purity accuracy.nmi accuracy.f_val accuracy.acc]
               
    end
end
end
re(cn,:)= mean(limian)
end
Y = tsne(V);                  % 得到的矩阵为Nx2，N为N个样本，Y矩阵为320x2
gscatter(Y(:,1), Y(:,2),gndnk);% 若无label输入，则画出的图没有色彩区分
toc