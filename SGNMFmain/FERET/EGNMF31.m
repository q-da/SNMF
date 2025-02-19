%%%%%%%%%%%%%%%%%% GNMF %%%%%%%%%%%%%%%%%% X-UV' lambda tr(V'LV)
function [U,V,UZ,VZ,errs,errs1]=EGNMF31(X,C,opt,W)

eps=opt.eps;
Maxiter=opt.Maxiter;
lambda=opt.lambda;


[n,m]=size(X);
% U=0.01*rand(n,C);
% V=rand(m,C);
% UZ=X*rand(m,C);
% VZ=X'*rand(n,C);
U=rand(n,C);
V=rand(m,C);
UZ=rand(n,C);
VZ=rand(m,C);
errs = zeros(Maxiter+1,1);
errs1 = zeros(Maxiter+1,1);

LD=sum(W,2);
D=diag(LD);
L=D-W;
nl=svds(L,1);
nl=lambda*nl;
   loss = norm(X-U*V'-UZ*VZ','fro')+lambda*trace(V'*L*V);
   loss1 = norm(X-U*V'-UZ*VZ','fro');
   errs(1) = loss;
   errs1(1) = loss1;
for t = 1:Maxiter
    if t<0*Maxiter
          U= U .* ( (X*V) ./ (U*V'*V )+eps); 
        %   W = normalize_W(W,1);
          V= V .* ( (X'*U+lambda*W*V) ./((V*U'*U+lambda*D*V)+eps) );
          loss = norm(X-U*V','fro')+lambda*trace(V'*L*V);
          loss1 = norm(X-U*V','fro');
          errs(t+1) = loss;
          errs1(t+1) = loss1;
   else
   U= U .* ( (X*V) ./ (U*V'*V+UZ*VZ'*V+eps )); 
   UZ= UZ .* ( (X*VZ) ./ (U*V'*VZ+UZ*VZ'*VZ+eps )); 
   VZ= VZ .* ( (X'*UZ) ./((V*U'*UZ+VZ*UZ'*UZ)+eps) );
   
   V= V .* ( (X'*U+lambda*W*V) ./((V*U'*U+VZ*UZ'*U+lambda*D*V)+eps) );
   loss = norm(X-U*V'-UZ*VZ','fro')+lambda*trace(V'*L*V);
   loss1 = norm(X-U*V'-UZ*VZ','fro');
   errs(t+1) = loss;
   errs1(t+1) = loss1;
    end
    disp(['the ', num2str(t), ' obj is ', num2str(errs(t)) , ' err1 is ', num2str(errs1(t))]);
end


end