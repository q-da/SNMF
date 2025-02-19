function [E,UV,V,obj,obj1]=EABNMTF31(X,P,para,A,W,l)
% X in d \times N

k=para.k;
maxiter=para.maxiter;
alpha=para.alpha;
%beta=para.beta;

d=size(X,1);
n=size(X,2);
%mm = size(N,1);

L=A-W;
SS = 0;
XU=eye(d);

%I = eye(mm);

% init
U=rand(d,k);
%V=rand(k,n);
U1=rand(d,k);
V1=rand(n,k);

Z = abs(randn(n+k-l, k));
%S = rand(k, k);
S = eye(k);
V=P*Z;
obj=zeros(maxiter+1,1);
obj(1)=norm(X-U*S*Z'*P'-U1*V1','fro')+alpha*trace(Z'*P'*L*P*Z);
obj1=zeros(maxiter+1,1);
obj1(1)=norm(X-U*S*Z'*P'-U1*V1','fro');
for iter=1:maxiter
    if iter<maxiter*0.85
        U = U.*(X*P*Z*S')./((U*S*Z'*P')*P*Z*S'+eps);

        S = S.*(U'*X*P*Z)./(U'*U*S*Z'*P'*P*Z+eps);

        P = P.*(X'*U*S*Z'+alpha*W*P*Z*Z')./(P*Z*S'*U'*U*S*Z'+alpha*A*P*Z*Z');

        Z = Z.*((P'*X'*U*S+alpha*P'*W*P*Z)./(((P'*P*Z*S'*U')*U*S+alpha*P'*A*P*Z+eps)));
    else
        U = U.*(X*P*Z*S')./((U*S*Z'*P')*P*Z*S'+U1*V1'*P*Z*S'+eps);

        S = S.*(U'*X*P*Z)./(U'*U*S*Z'*P'*P*Z+U'*(U1*V1')*P*Z+eps);

        P = P.*(X'*U*S*Z'+alpha*W*P*Z*Z')./(P*Z*S'*U'*U*S*Z'+V1*U1'*U*S*Z'+alpha*A*P*Z*Z');

        U1=U1.*(X*V1)./(U*S*Z'*P'*V1+U1*V1'*V1+eps);

        V1=V1.*(X'*U1)./(P*Z*S'*U'*U1+V1*U1'*U1+eps);

        Z = Z.*((P'*X'*U*S+alpha*P'*W*P*Z)./(((P'*P*Z*S'*U')*U*S+P'*V1*U1'*U*S+alpha*P'*A*P*Z+eps)));
    end
    V=P*Z;

    U=U./(repmat(sum(U,1),d,1));
    V=V.*(repmat(sum(U,1)',1,n))';
    if iter<maxiter*0.85
        obj(iter+1)=norm(X-U*S*Z'*P','fro')+alpha*trace(Z'*P'*L*P*Z);
        obj1(iter+1)=norm(X-U*S*Z'*P','fro');
    else
        obj(iter+1)=norm(X-U*S*Z'*P'-U1*V1','fro')+alpha*trace(Z'*P'*L*P*Z);
        obj1(iter+1)=norm(X-U*S*Z'*P'-U1*V1','fro');
        %cost(iter) = abs(obj(iter+1)-obj(iter));
    end
    disp(['the ', num2str(iter), ' obj is ', num2str(obj(iter)) , ' obj1 is ', num2str(obj1(iter))]);

end
E=U1*V1';
UV=U*S*Z'*P';
end