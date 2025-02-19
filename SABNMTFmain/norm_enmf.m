an(1)=norm(Z,'fro')
an(2)=norm(U*V','fro')
an(3)= norm(X,'fro')


a(1)=norm(UZ*VZ','fro')
a(2)=norm(U*V','fro')

for i=1:10
    a=rand(1,i)
end

[v,m]=find(a>0.5)