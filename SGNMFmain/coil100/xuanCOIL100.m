function [feank,gndnk]=xuanCOIL100(fea,gnd,N,nk,m)
%fea������ gnd��ǩ��Ϣ N������ kҪѡȡ������ m��һ����ѡȡ�ĸ���

a=randperm(N,nk)-1;  %��1-100���ѡȡ���
row=m*nk; 
gndnk=zeros(row,1);
% H=zeros(k,1);
d=zeros(N,1); 
ldx=zeros(N+1,1);
co=size(fea,2);
feank=zeros(m*nk,co);
b=zeros(nk,m);

for i=1:N
    [d(i),ldx(i)]=max(gnd==(i));  %���������� dֻ���жϴ��� ldx�������ĵ�һ������ ����ldx1(1)��ʾ0��������ֵĵ�һ������
end
ldx(N+1)=7201;  %70001���Ի�

% for i=1:k
%     H(i)=l(a(i)+2)-l(a(i)+1);
% end

H=ldx(a+2)-ldx(a+1); %ѡȡ�ĸ�����е����������
mh=floor(H/m);%��ȡ������������ƽ��


for i=1:nk
    b(i,:)=sort(randperm(H(i),m));
    for j=1:m
        x=(ldx(a(i)+1)-1)+b(i,j);%��¼��һ���±�
        y=(ldx(a(i)+1)-1)+b(i,j)+mh(i);%��¼�ڶ����±�
        if y>size(fea,1)
            y=size(fea,1);
        end
        feank(m*(i-1)+j,:)=mean(fea(x:y,:),1);%��ô����ȡƽ��
        gndnk(m*(i-1)+j,1)=gnd(x,1);
    end
end




