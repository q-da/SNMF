function [feank,gndnk]=xuanmnist(fea,gnd,N,k,m)
%fea������ gnd��ǩ��Ϣ N������ kҪѡȡ������ m��һ����ѡȡ�ĸ���

a=randperm(N,k)-1;  %��0-9���ѡȡ���
row=m*k; 
gndnk=zeros(row,1);
% H=zeros(k,1);
d=zeros(N,1); 
ldx=zeros(N+1,1);
co=size(fea,2);
feank=zeros(m*k,co);
b=zeros(k,m);

for i=1:N
    [d(i),ldx(i)]=max(gnd==(i-1));  %���������� dֻ���жϴ��� ldx�������ĵ�һ������ ����ldx1(1)��ʾ0��������ֵĵ�һ������
end
ldx(N+1)=70001;  %70001���Ի�

% for i=1:k
%     H(i)=l(a(i)+2)-l(a(i)+1);
% end

H=ldx(a+2)-ldx(a+1); %ѡȡ�ĸ�����е����������

for i=1:k
    b(i,:)=sort(randperm(H(i),m));
    for j=1:m
        feank(m*(i-1)+j,:)=fea((ldx(a(i)+1)-1)+b(i,j),:);
        gndnk(m*(i-1)+j,1)=gnd((ldx(a(i)+1)-1)+b(i,j),1);
    end
end



