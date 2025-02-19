clear
clc

% load and 
load ORL_32x32.mat
%load COIL100.mat
%load mnist.mat
fea = NormalizeFea(fea); 
X=fea';
C=40; 
m=400;
n=1024;
l=120;


alpha_search=[1];
K_search = [3];

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

                [Xiter,gnditer]=randpermData(X,gnd,C,m,l);
                
                P_old=zeros(l,C);     
                for ss=1:C                 
                    for cc=1:l          
                        if gnditer(cc,1)==ss 
                            P_old(cc,ss)=1;
                        end
                    end
                end
                I_S=eye(m-l);      
                P=zeros(m,m-l+C);
                P(1:l,1:C)=P_old;
                P(l+1:end,C+1:end)=I_S;

                % P(end-l+1:end,end-C+1:end)=P_old;%把最后一个区域也变成块
                % PI=P_old*P_old';%对应的权重放大成1
                
                [~, W, ~] = CAN(Xiter, C, K);
                %[~, W, ~] = CAN(X, C, K);

                W=refineW(W,l,C);%W_{ab}

                % W(end-l+1:end,end-l+1:end)=PI;%把最后一块的信息也放大

                A=diag(sum(W,2));%D_{ab}                       
                [U,V]=ABNMTF(X,P,para,A,W,l);
                %[U,V]=ABNMTF(Xiter,P,para,A,W,l);%重排之后的数据进行分解
                H=V;

                Hnew=H(l+1:end,:);
                nClass=C;
                gndnew=gnditer(l+1:end);

                %%原来的gnd数据
                % Hnew=H(l+1:end,:);
                % nClass=C;
                % gndnew=gnd(l+1:end);
                
                accuracy = eval_clustering_accuracy(Hnew',gndnew,nClass,50);
                re(cn,:)= [accuracy.mi accuracy.purity accuracy.nmi accuracy.f_val accuracy.acc]
               
    end
end
end