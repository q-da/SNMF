%%%%%%%%%%%%%%%%%% GNMF %%%%%%%%%%%%%%%%%% X-UV' lambda tr(V'LV)
function [U,V,UZ,VZ,errs,errs1]=EGNMF3(X,C,opt,W)

eps=opt.eps;
Maxiter=opt.Maxiter;
lambda=opt.lambda;


[n,m]=size(X);
U=0.01*rand(n,C);
V=rand(m,C);
UZ=X*rand(m,C);
VZ=X'*rand(n,C);
errs = zeros(Maxiter,1);
errs1 = zeros(Maxiter,1);

LD=sum(W,2);
D=diag(LD);
L=D-W;
nl=svds(L,1);
nl=lambda*nl;

for t = 1:Maxiter
   UZ= UZ .* ( (X*VZ) ./ (UZ*VZ'*VZ+eps )); 
   VZ= VZ .* ( (X'*UZ) ./((VZ*UZ'*UZ)+eps) );
   U= U .* ( (X*V) ./ (U*V'*V+UZ*VZ'*V+eps )); 
   %   W = normalize_W(W,1);
   V= V .* ( (X'*U+lambda*W*V) ./((V*U'*U+VZ*UZ'*U+lambda*D*V)+eps) );
   loss = norm(X-U*V'-UZ*VZ','fro')+lambda*trace(V'*L*V);
   loss1 = norm(X-U*V'-UZ*VZ','fro');
   errs(t) = loss;
   errs1(t) = loss1;
   disp(['the ', num2str(t), ' errs is ', num2str(errs(t)) , ' errs1 is ', num2str(errs1(t))]);
end


end