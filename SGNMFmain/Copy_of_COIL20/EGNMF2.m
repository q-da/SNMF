%%%%%%%%%%%%%%%%%% GNMF %%%%%%%%%%%%%%%%%% X-UV' lambda tr(V'LV)
function [U,V,Z,errs,errs1]=EGNMF2(X,C,opt,W)

eps=opt.eps;
Maxiter=opt.Maxiter;
lambda=opt.lambda;


[n,m]=size(X);
U=0.01*rand(n,C);
V=rand(m,C);
%Z=abs(X-U*V');
errs = zeros(Maxiter,1);
errs1 = zeros(Maxiter,1);


LD=sum(W,2);
D=diag(LD);
L=D-W;
nl=svds(L,1);
nl=lambda*nl;

for t = 1:Maxiter
   Z=X;
   U= U .* ( (X*V) ./ (U*V'*V+Z*V+eps )); 
   %   W = normalize_W(W,1);
   V= V .* ( (X'*U+lambda*W*V) ./((V*U'*U+Z'*U+lambda*D*V)+eps) );
   loss = norm(X-U*V'-Z,'fro')+lambda*trace(V'*L*V);
   loss1 = norm(X-U*V'-Z,'fro');
   errs(t) = loss;
   errs1(t) = loss1;
end
% 
% for t = 1:Maxiter
% 
%    U= U .* ( (X*V) ./ (U*V'*V+eps )); 
% %   W = normalize_W(W,1);
%    V= V .* ( (X'*U+lambda*W*V) ./((V*U'*U+lambda*D*V)+eps) );
%    Z=Z./X1;
%    X1=abs(X1-Z);
%    loss = norm(X-U*V'-Z,'fro')+lambda*trace(V'*L*V);
%    errs(t) = loss;
% end

end