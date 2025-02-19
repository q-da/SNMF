%%%%%%%%%%%%%%%%%% GNMF %%%%%%%%%%%%%%%%%% X-UV' lambda tr(V'LV)
function [U,V,E,errs,errs1]=EGNMF21(X,C,opt,W)

eps=opt.eps;
Maxiter=opt.Maxiter;
lambda=opt.lambda;


[n,m]=size(X);
U=rand(n,C);
V=rand(m,C);
E=rand(n,m);
errs = zeros(Maxiter+1,1);
errs1 = zeros(Maxiter+1,1);


LD=sum(W,2);
D=diag(LD);
L=D-W;
nl=svds(L,1);
nl=lambda*nl;
   loss = norm(X-U*V'-E,'fro')+lambda*trace(V'*L*V);
   loss1 = norm(X-U*V'-E,'fro');
   errs(1) = loss;
   errs1(1) = loss1;
for t = 1:Maxiter
   %Z=X;
   if t<0.1*Maxiter
          U= U .* ( (X*V) ./ (U*V'*V )+eps); 
        %   W = normalize_W(W,1);
          V= V .* ( (X'*U+lambda*W*V) ./((V*U'*U+lambda*D*V)+eps) );
          loss = norm(X-U*V','fro')+lambda*trace(V'*L*V);
          loss1 = norm(X-U*V','fro');
          errs(t+1) = loss;
          errs1(t+1) = loss1;
   else
       
   U= U .* ( (X*V) ./ (U*V'*V+E*V )+eps); 
   %   W = normalize_W(W,1);
   E=E.*((X)./((E+U*V')+eps));
   V= V .* ( (X'*U+lambda*W*V) ./((V*U'*U+E'*U+lambda*D*V)+eps) );
   loss = norm(X-U*V'-E,'fro')+lambda*trace(V'*L*V);
   loss1 = norm(X-U*V'-E,'fro');
   errs(t+1) = loss;
   errs1(t+1) = loss1;
   end
   disp(['the ', num2str(t), ' obj is ', num2str(errs(t)) , ' err1 is ', num2str(errs1(t))]);
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