
clear
clc
tic
load ORL_32x32.mat
fea = NormalizeFea(fea);

alpha_search=0.1;
K_search = 3;
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


                [~, W, ~] = CAN(Xiter, C, K);

                W=refineW(W,l,C);%W_{ab}

                A=diag(sum(W,2));%D_{ab}
                %[U,V,err,err1]=SABNMTF2(X,P,para,A,W,l);%
                % [U,V,err,err1]=SABNMTF3(X,P,para,A,W,l);%
                %[E,UV,V,err,err1]=SABNMTF_S(X,P,para,A,W,l);%
                [E,UV,V,err,err1]=SABNMTF_T(X,P,para,A,W,l);%

                H=V;

                Hnew=H(l+1:end,:);
                nClass=C;
                gndnew=gnditer(l+1:end);

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