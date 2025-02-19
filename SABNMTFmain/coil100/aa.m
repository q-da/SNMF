clc;clear
a=0;b=1;
n=2;%中间节点的个数
h=(b-a)/(n+1);
t=0:h:1;
iter=size(t,2);
L=zeros(iter,1);%列向量
for i=1:iter
    if i==1 || i==iter
        L(i)=0;
    else
        L(i)=1-(t(i)-t(i))/(n+1);
    end
end
syms s
W=zeros(iter,iter);
for i=1:iter%i为行j为列
    for j=1:iter
        if j==1 || j==iter
            W(i,j)=0;
        else
            W(i,j)=int(exp(s*t(i))*(s-t(j-1)),t(j-1),t(j))+int(exp(s*t(i))*(t(j)-s),t(j),t(j+1));
        end
    end
end
K=5*ones(iter,iter)-W/(n+1+eps);%eye?
F=zeros(iter,1);%列向量
for j=1:iter
    F(j)=5*exp(-t(j))*cos(t(j))-int(exp(s*t(j)).*exp(-s)*cos(s),0,1);
end
U=K\F;%数值解
E=zeros(iter,1);%精确解
for j=1:iter
    E(j)=5*exp(-t(j))*cos(t(j));
end
err=max(abs(E-U))%0到n中绝对值之差最大的值
 plot(t,U,'*',t,E,'o')