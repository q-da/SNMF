%f=256*fea';
%f=256*E;
%f=256*(U*V');
f=256*(E+U*V');
%f=fea;
fe=inv(DS)*E';
a=256*f1(1,:);
for i=1:32;
    ab(i,:)=a(1+32*(i-1):32*i);
end
aa=reshape(a,[32 32])
imshow(uint8(ab'))
u=256*U;
v=256*V;
imshow(uint8(u(1:20,:)))
imshow(uint8(v(1:20,:)))

psnr(inv(DS)*fea,f1)
psnr(inv(DS)*(E'+V*U'),f1)
psnr(inv(DS)*E',f1)


 
 load('PIE_pose27.mat')
 for j=1:10
     a=fea(j,:);
     for i=1:32
         b(i,1:32)=a(1,32*(i-1)+1:i*32);
     end
     ub=uint8(b');
     imshow(ub)
     imwrite(ub,[num2str(j) '.jpg']);
 end