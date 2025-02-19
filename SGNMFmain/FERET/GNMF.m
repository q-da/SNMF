%%%%%%%%%%%%%%%%%% GNMF %%%%%%%%%%%%%%%%%% X-UV' lambda tr(V'LV)
function [U,V,errs,errs1]=GNMF(X,C,opt,W)

eps=opt.eps;
Maxiter=opt.Maxiter;
lambda=opt.lambda;


[n,m]=size(X);
U=rand(n,C);
V=rand(m,C);
errs = zeros(Maxiter+1,1);
errs1 = zeros(Maxiter+1,1);
LD=sum(W,2);
D=diag(LD);
L=D-W;
nl=svds(L,1);
nl=lambda*nl;
   loss = norm(X-U*V','fro')+lambda*trace(V'*L*V);
   loss1 = norm(X-U*V','fro');
   errs(1) = loss;
   errs1(1) = loss1;
for t = 1:Maxiter

   U= U .* ( (X*V) ./ (U*V'*V+eps )); 
%   W = normalize_W(W,1);
   V= V .* ( (X'*U+lambda*W*V) ./((V*U'*U+lambda*D*V)+eps) );
   loss = norm(X-U*V','fro')+lambda*trace(V'*L*V);
   loss1 = norm(X-U*V','fro');
   errs(t+1) = loss;
   errs1(t+1) = loss1;
   disp(['the ', num2str(t), ' obj is ', num2str(errs(t)) , ' err1 is ', num2str(errs1(t))]);
end


end