clc;clear;
%确定图片的位置和大小，[x y width height]
figure('position',[150,100,750,650]);
% %准备数据
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%yale
%num=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\zhu\coil20.xlsx') ;
num=readmatrix('D:\graduate\matlab\NMF\create\ENMF\zhu\yale.xlsx') ;

%画柱状图
%axis([-inf inf -inf inf 60 100])
b=bar3(num);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'interp';
end
%设置小标签
set(gca,'yticklabel',{'3','5','7','9','11','13','15'},'Fontname','Times New Roman','FontSize',11);
set(gca,'xticklabel',{'0','0.001','0.01','0.1','1','10','100'},'Fontname','Times New Roman','FontSize',11);
%修改每个轴的标签
%title('COIL20')
title('YALE')
colorbar
ylabel('K','Fontname','Times New Roman','FontSize',14);
xlabel('\lambda','Fontname','Times New Roman','FontSize',14);
zlabel('ACC(%)','Fontname','Times New Roman','FontSize',14);
%legend({'M_1','M_2','M_3','M_4'});
figure('position',[150,100,750,650]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%coil20
num=readmatrix('D:\graduate\matlab\NMF\create\ENMF\zhu\coil20.xlsx') ;
%num=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\zhu\yale.xlsx') ;

%画柱状图
%axis([-inf inf -inf inf 60 100])
b=bar3(num);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'interp';
end
%设置小标签
set(gca,'yticklabel',{'3','5','7','9','11','13','15'},'Fontname','Times New Roman','FontSize',11);
set(gca,'xticklabel',{'0','0.001','0.01','0.1','1','10','100'},'Fontname','Times New Roman','FontSize',11);
%修改每个轴的标签
title('COIL20')
%title('Yale')
colorbar
ylabel('K','Fontname','Times New Roman','FontSize',14);
xlabel('\lambda','Fontname','Times New Roman','FontSize',14);
zlabel('ACC(%)','Fontname','Times New Roman','FontSize',14);
%legend({'M_1','M_2','M_3','M_4'});
figure('position',[150,100,750,650]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%coil100
%num=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\zhu\coil20.xlsx') ;
num=readmatrix('D:\graduate\matlab\NMF\create\ENMF\zhu\coil100.xlsx') ;

%画柱状图
%axis([-inf inf -inf inf 60 100])
b=bar3(num);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'interp';
end
%设置小标签
set(gca,'yticklabel',{'3','5','7','9','11','13','15'},'Fontname','Times New Roman','FontSize',11);
set(gca,'xticklabel',{'0','0.001','0.01','0.1','1','10','100'},'Fontname','Times New Roman','FontSize',11);
%修改每个轴的标签
%title('COIL20')
title('COIL100')
colorbar
ylabel('K','Fontname','Times New Roman','FontSize',14);
xlabel('\lambda','Fontname','Times New Roman','FontSize',14);
zlabel('ACC(%)','Fontname','Times New Roman','FontSize',14);
%legend({'M_1','M_2','M_3','M_4'});
figure('position',[150,100,750,650]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FERET
%num=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\zhu\coil20.xlsx') ;
num=readmatrix('D:\graduate\matlab\NMF\create\ENMF\zhu\FERET.xlsx') ;

%画柱状图
%axis([-inf inf -inf inf 60 100])
b=bar3(num);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'interp';
end
%设置小标签
set(gca,'yticklabel',{'3','5','7','9','11','13','15'},'Fontname','Times New Roman','FontSize',11);
set(gca,'xticklabel',{'0','0.001','0.01','0.1','1','10','100'},'Fontname','Times New Roman','FontSize',11);
%修改每个轴的标签
%title('COIL20')
title('FERET')
colorbar
ylabel('K','Fontname','Times New Roman','FontSize',14);
xlabel('\lambda','Fontname','Times New Roman','FontSize',14);
zlabel('ACC(%)','Fontname','Times New Roman','FontSize',14);
%legend({'M_1','M_2','M_3','M_4'});
figure('position',[150,100,750,650]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%GT
%num=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\zhu\coil20.xlsx') ;
num=readmatrix('D:\graduate\matlab\NMF\create\ENMF\zhu\GT.xlsx') ;

%画柱状图
%axis([-inf inf -inf inf 60 100])
b=bar3(num);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'interp';
end
%设置小标签
set(gca,'yticklabel',{'3','5','7','9','11','13','15'},'Fontname','Times New Roman','FontSize',11);
set(gca,'xticklabel',{'0','0.001','0.01','0.1','1','10','100'},'Fontname','Times New Roman','FontSize',11);
%修改每个轴的标签
%title('COIL20')
title('GT')
colorbar
ylabel('K','Fontname','Times New Roman','FontSize',14);
xlabel('\lambda','Fontname','Times New Roman','FontSize',14);
zlabel('ACC(%)','Fontname','Times New Roman','FontSize',14);
%legend({'M_1','M_2','M_3','M_4'});
figure('position',[150,100,750,650]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ORL
%num=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\zhu\coil20.xlsx') ;
num=readmatrix('D:\graduate\matlab\NMF\create\ENMF\zhu\ORL.xlsx') ;

%画柱状图
%axis([-inf inf -inf inf 60 100])
b=bar3(num);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'interp';
end
%设置小标签
set(gca,'yticklabel',{'3','5','7','9','11','13','15'},'Fontname','Times New Roman','FontSize',11);
set(gca,'xticklabel',{'0','0.001','0.01','0.1','1','10','100'},'Fontname','Times New Roman','FontSize',11);
%修改每个轴的标签
%title('COIL20')
title('ORL')
colorbar
ylabel('K','Fontname','Times New Roman','FontSize',14);
xlabel('\lambda','Fontname','Times New Roman','FontSize',14);
zlabel('ACC(%)','Fontname','Times New Roman','FontSize',14);
%legend({'M_1','M_2','M_3','M_4'});
figure('position',[150,100,750,650]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PIE
%num=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\zhu\coil20.xlsx') ;
num=readmatrix('D:\graduate\matlab\NMF\create\ENMF\zhu\PIE.xlsx') ;

%画柱状图
%axis([-inf inf -inf inf 60 100])
b=bar3(num);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'interp';
end
%设置小标签
set(gca,'yticklabel',{'3','5','7','9','11','13','15'},'Fontname','Times New Roman','FontSize',11);
set(gca,'xticklabel',{'0','0.001','0.01','0.1','1','10','100'},'Fontname','Times New Roman','FontSize',11);
%修改每个轴的标签
%title('COIL20')
title('PIE')
colorbar
ylabel('K','Fontname','Times New Roman','FontSize',14);
xlabel('\lambda','Fontname','Times New Roman','FontSize',14);
zlabel('ACC(%)','Fontname','Times New Roman','FontSize',14);
%legend({'M_1','M_2','M_3','M_4'});
figure('position',[150,100,750,650]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Umist
%num=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\zhu\coil20.xlsx') ;
num=readmatrix('D:\graduate\matlab\NMF\create\ENMF\zhu\Umist.xlsx') ;

%画柱状图
%axis([-inf inf -inf inf 60 100])
b=bar3(num);
for k = 1:length(b)
    zdata = b(k).ZData;
    b(k).CData = zdata;
    b(k).FaceColor = 'interp';
end
%设置小标签
set(gca,'yticklabel',{'3','5','7','9','11','13','15'},'Fontname','Times New Roman','FontSize',11);
set(gca,'xticklabel',{'0','0.001','0.01','0.1','1','10','100'},'Fontname','Times New Roman','FontSize',11);
%修改每个轴的标签
%title('COIL20')
title('UMIST')
colorbar
ylabel('K','Fontname','Times New Roman','FontSize',14);
xlabel('\lambda','Fontname','Times New Roman','FontSize',14);
zlabel('ACC(%)','Fontname','Times New Roman','FontSize',14);
%legend({'M_1','M_2','M_3','M_4'});
