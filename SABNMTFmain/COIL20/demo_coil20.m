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

alpha_search=10;%0.001,0.01,0.1,1,10,100
K_search = 3;%3,5,7,9,11,13,15
rng('default')
re=zeros(10,5);
for cn=1:10
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
            re(cn,:)= [accuracy.mi accuracy.purity accuracy.nmi accuracy.f_val accuracy.acc]

        end
    end
end
Y = tsne(V);                  %
gscatter(Y(:,1), Y(:,2),gnd);% 若无label输入，则画出
toc