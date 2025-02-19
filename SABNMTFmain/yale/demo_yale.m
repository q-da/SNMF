clear
clc
tic
load('Yale_32x32.mat')
fea=im2double(fea);
fea = NormalizeFea(fea); 
X=fea';
C=15; 
n=165;
%n=1024;
l=45;


alpha_search=0.01;%0.001,0.01,0.1,1,10,100
K_search =3;%3,5,7,9,11,13,15

re=zeros(10,5);
for cn=1:10
%lambda_search = [0];
%lambda_search=[0,0.001,0.01,0.1,1,10,100,1000]; % label informatin 
%mu_search=[0,0.001,0.01,0.1,1,10,100,1000]; % graph information
for alpha=alpha_search
    for K=K_search
        clear res

            para.alpha=alpha;
            para.k=C;
            para.maxiter=100;

                [Xiter,gnditer]=randpermData(X,gnd,C,n,l);
                
                P_old=zeros(l,C);     
                for ss=1:C                 
                    for cc=1:l          
                        if gnditer(cc,1)==ss 
                            P_old(cc,ss)=1;
                        end
                    end
                end
                I_S=eye(n-l);      
                P=zeros(n,n-l+C);
                P(1:l,1:C)=P_old;
                P(l+1:end,C+1:end)=I_S;

                % P(end-l+1:end,end-C+1:end)=P_old;%把最后一个区域也变成块
                % PI=P_old*P_old';%对应的权重放大成1
                
                [~, W, ~] = CAN(Xiter, C, K);
                %[~, W, ~] = CAN(X, C, K);

                W=refineW(W,l,C);%W_{ab}

                % W(end-l+1:end,end-l+1:end)=PI;%把最后一块的信息也放大

                A=diag(sum(W,2));%D_{ab} 

                %[U,V,err,err1]=SABNMTF2(X,P,para,A,W,l);%
                % [U,V,err,err1]=SABNMTF3(X,P,para,A,W,l);%
                %[E,UV,V,err,err1]=SABNMTF_S(X,P,para,A,W,l);%
                [E,UV,V,err,err1]=SABNMTF_T(X,P,para,A,W,l);%

                H=V;

                Hnew=H(l+1:end,:);
                nClass=C;
                gndnew=gnditer(l+1:end);
                %gndnew=gnd(l+1:end);

                %%原来的gnd数据
                % Hnew=H(l+1:end,:);
                % nClass=C;
                % gndnew=gnd(l+1:end);
                
                accuracy = eval_clustering_accuracy(Hnew',gndnew,nClass,50);
                re(cn,:)= [accuracy.mi accuracy.purity accuracy.nmi accuracy.f_val accuracy.acc]
               
    end
end
end
Y = tsne(V);                  % 得到的矩阵为Nx2，N为N个样本，Y矩阵为320x2
gscatter(Y(:,1), Y(:,2),gnd);% 若无label输入，则画出的图没有色彩区分
toc