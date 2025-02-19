%%%%%%%%%%%%%%%%%% EGNMF %%%%%%%%%%%%%%%%%% X-UV' lambda tr(V'LV)
function [U,V,errs,errs1]=EGNMF1(X,C,opt,W)

eps=opt.eps;
Maxiter=opt.Maxiter;
lambda=opt.lambda;


[n,m]=size(X);
U=0.01*rand(n,C);%这里需要U尽量的小
V=rand(m,C);
X1=X;
errs = zeros(Maxiter,1);
errs1 = zeros(Maxiter,1);

LD=sum(W,2);
D=diag(LD);
L=D-W;
nl=svds(L,1);
nl=lambda*nl;

for t = 1:Maxiter
   Z=X-U*V';
   U= U .* ( (X1*V) ./ (U*V'*V+eps )); 
   %   W = normalize_W(W,1);
   V= V .* ( (X1'*U+lambda*W*V) ./((V*U'*U+lambda*D*V)+eps) );
   X1=U*V';
   loss = norm(X-U*V'-Z,'fro')+lambda*trace(V'*L*V);
   loss1 = norm(X-U*V'-Z,'fro');
   errs(t) = loss;
   errs1(t) = loss1;
   disp(['the ', num2str(t), ' errs is ', num2str(errs(t)) , ' errs1 is ', num2str(errs1(t))]);
end


end