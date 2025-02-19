function [feank,gndnk]=xuan(fea,gnd,N,k,M)
a=randperm(N,k);
row=M*k;
gndnk=zeros(row,1);
for i=1:k
feank(M*(i-1)+1:M*i,:)=fea(M*(a(i)-1)+1:M*a(i),:);
gndnk(M*(i-1)+1:M*i,1)=gnd(M*(a(i)-1)+1:M*a(i),1);
end


