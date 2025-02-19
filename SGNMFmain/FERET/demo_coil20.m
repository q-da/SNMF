% xiter做P，xiter做W，X分解，gnditer
clear
clc

% load and 
load COIL20.mat
fea = NormalizeFea(fea); 
X=fea';
C=20; 
m=1440;
n=1024;
l=60;

alpha_search=[1];
K_search = [3];

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

                [Xiter,gnditer]=randpermData(X,gnd,C,m,l);
                
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
                
                [~, W2, ~] = CAN(Xiter, C, K);

                W2=refineW(W2,l,C);%W_{ab}
                A2=diag(sum(W2,2));%D_{ab}
                L2=A2-W2;
                
                [Xiter1,gnditer]=randpermData1(fea,gnd,C,m,l);                
                
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
                
[~, W1, ~] = CAN(Xiter1, C, K);

W1=refineW(W1,l,C);%W_{ab}
A1=diag(sum(W1,2));%D_{ab}
L1=A1-W1;


                %[U,V]=ABNMTF(X,P1,P2,para,A2,W2,l);
                [U,V]=DABNMTF(X,P1,P2,para,L1,L2,l);%双边
                H=V;
                Hnew=H(l+1:end,:);
                nClass=C;
                gndnew=gnditer(l+1:end);
                % 
                accuracy = eval_clustering_accuracy(Hnew',gndnew,nClass,50)  
               
    end
end