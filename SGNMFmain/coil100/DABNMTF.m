function [U,V,obj]=DABNMTF(X,P1,P2,para,L2,l)
% X in d \times N

k=para.k;
maxiter=para.maxiter;
alpha1=para.alpha1;
alpha0=para.alpha0;
lambda2=para.lambda2;

d=size(X,1);%1024
n=size(X,2);%1440

% init
%V=rand(k,n);
Z1 = abs(randn(d+k-l,k));%984 * 20
Z2 = abs(randn(n+k-l, k));%1400 *20
%S = rand(k, k);
S = eye(k);
V=P2*Z2;%1440 *1400 1400 * 20
U=P1*Z1;%1024 *984  984 * 20
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%先投影%%%%%%%%%%%%%%%5%%%%%%%%%%%%
% alpha=opt.alpha;
% alpha1=opt.alpha1;
% [m,n]=size(X);
% U=abs(rand(m,C));%1440*20 P2*Z2
% V=abs(rand(C,n));%20*1024 z1'*P1' X=UV
%X=1024*1440
obj0=0;

for k=1:50
    % V=V+alpha*pinv(U)*(X-U*V)/norm(U,'fro'); %20*1024
    % V=(V+abs(V))/2;
    % U=U+alpha*(X-U*V)*pinv(V)/norm(V,'fro');%1440*20
    % U=(U+abs(U))/2;

    Z1=(Z1'*P1'+pinv(P2*Z2)*(X'-P2*Z2*Z1'*P1')/norm(P2*Z2,'fro'))*pinv(P1');
    Z1=Z1';
    Z1=(Z1+abs(Z1))/2;
    Z2=pinv(P2)*(P2*Z2+(X'-P2*Z2*Z1'*P1')*pinv(Z1'*P1')/norm(Z1'*P1','fro'));
    Z2=(Z2+abs(Z2))/2;
    %停止条件
    %obj1=norm(MX-U*V'./(W1+eps))+lambda*trace(U'*L*U);
    obj1=norm(X'-P2*Z2*Z1'*P1','fro');
    ob(k)=obj1;
    err=abs(obj1-obj0);
    disp(['the ', num2str(k), ' project obj is ', num2str(ob(k)) , ' err is ', num2str(err)]);
   if err<eps
       break;
   end   
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%分类%%%%%%%%%%%%%%%%%%%%%%%%%%
%obj(1)=sum(sum((X-P1*Z1*S*Z2'*P2').^2))-lambda1*trace(Z1'*P1'*L1*P1*Z1)+lambda2*trace(Z2'*P2'*L2*P2*Z2);
obj=zeros(maxiter,1);
obj(1)=norm(X-P1*Z1*S*Z2'*P2','fro')+lambda2*trace(Z2'*P2'*L2*P2*Z2);

%辅助函数初始化
S0=S;
Z10=Z1;
Z20=Z2;

for iter=1:maxiter
    %更新辅助函数
    YS =S+(alpha0-1)/alpha1*(S-S0);
    YZ1=Z1+(alpha0-1)/alpha1*(Z1-Z10);
    YZ2=Z2+(alpha0-1)/alpha1*(Z2-Z20);
    S0=S;
    Z10=Z1;
    Z20=Z2;

    %lichi系数
    Ls=norm(Z1'*P1'*P1*Z1,2)*norm(Z2'*P2'*P2*Z2);
    %Lz1=norm(P1'*P1,2)*norm(S*Z2'*P2'*P2*Z2*S')+lambda1*norm(P1'*L1*P1,2);
    Lz1=norm(P1'*P1,2)*norm(S*Z2'*P2'*P2*Z2*S');%不考虑L1
    Lz2=norm(P2'*P2,2)*norm(S'*Z1'*P1'*P1*Z1*S)+lambda2*norm(P2'*L2*P2,2);

    %更新迭代矩阵
    S=YS-1/Ls*(Z1'*P1'*P1*Z1*YS*Z2'*P2'*P2*Z2-YS'*Z1'*P1'*X*P2*Z2);%用已更新的YS
    %Z1 = YZ1-1/Lz1*(P1'*P1*YZ1*S*Z2'*P2'*P2*Z2*S'-P1'*X*P2*Z2*S'+lambda1*P1'*L1*P1*YZ1);
    Z1 = YZ1-1/Lz1*(P1'*P1*YZ1*YS*Z2'*P2'*P2*Z2*YS'-P1'*X*P2*Z2*YS');%不考虑L1
    Z2 = YZ2-1/Lz2*(P2'*P2*YZ2*YS'*YZ1'*P1'*P1*YZ1*YS-P2'*X'*P1*YZ1*YS+lambda2*P2'*L2*P2*YZ2);

    V=P2*Z2;
    U=P1*Z1;
    alpha0=alpha1;
    alpha1=(1+sqrt(4*alpha0^2+1))/2;
    

    U=U./(repmat(sum(U,1),d,1));      
    V=V.*(repmat(sum(U,1)',1,n))';

    %obj(iter+1)=sum(sum((X-P1*Z1*S*Z2'*P2').^2))+lambda1*trace(Z1'*P1'*L1*P1*Z1)+lambda2*trace(Z2'*P2'*L2*P2*Z2);
    obj(iter+1)=norm(X-P1*Z1*S*Z2'*P2','fro')+lambda2*trace(Z2'*P2'*L2*P2*Z2);
    cost(iter) = abs(obj(iter+1)-obj(iter));
    
    disp(['the ', num2str(iter), ' obj is ', num2str(obj(iter)) , ' cost is ', num2str(cost(iter))]);

end

end   