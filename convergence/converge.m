clc;clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errcoil20.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Objective function error on COIL20')
ylim([1,4e5])

xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 100]);%坐标范围设置
set(gca,'YTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%coil100%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errcoil100.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Objective function error on COIL100')
ylim([1,3e5])

xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 100]);%坐标范围设置
set(gca,'YTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FERET%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errFERET.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Objective function error on FERET')
ylim([1,1e5])

xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 80]);%坐标范围设置
set(gca,'YTick',0:16:80,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%GT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errGT.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Objective function error on GT')
ylim([1,1e5])

xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 100]);%坐标范围设置
set(gca,'YTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ORL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errORL.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Objective function error on ORL')
ylim([1,1e5])

xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 100]);%坐标范围设置
set(gca,'YTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);
							

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PIE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errPIE.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Objective function error on PIE')
ylim([1,1e5])
xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 150]);%坐标范围设置
set(gca,'YTick',0:30:150,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Umist%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errUmist.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Objective function error on Umist')
ylim([0,1e6])
xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 100]);%坐标范围设置
set(gca,'YTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Yale%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\erryale.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Objective function error on Yale')
ylim([1,1e5])
xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 100]);%坐标范围设置
set(gca,'YTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errcoil201.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Approximate error on COIL20')
ylim([1,1e4])

xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 100]);%坐标范围设置
set(gca,'YTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%coil100%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errcoil1001.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Approximate error on COIL100')
ylim([1,6e4])

xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 100]);%坐标范围设置
set(gca,'YTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FERET%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errFERET1.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Approximate error on FERET')
ylim([1,500])

xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 30]);%坐标范围设置
set(gca,'YTick',0:6:30,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%GT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errGT1.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Approximate error on GT')
ylim([1,5000])

xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 20]);%坐标范围设置
set(gca,'YTick',0:4:20,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ORL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errORL1.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Approximate error on ORL')
ylim([1,4000])

xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 30]);%坐标范围设置
set(gca,'YTick',0:6:30,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);
							

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PIE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errPIE1.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Approximate error on PIE')
ylim([1,30000])
xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 50]);%坐标范围设置
set(gca,'YTick',0:10:50,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Umist%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errUmist1.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Approximate error on Umist')
ylim([0,30000])
xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 50]);%坐标范围设置
set(gca,'YTick',0:10:50,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Yale%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\erryale1.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
title('Approximate error on Yale')
ylim([1,10000])
xlabel('iter')
legend('EABNMTF3','EABNMTF4','ABNMtF','EGNMF3','EGNMF4','GNMF','CNMTF','CSNMF','SDGNMFBO')
%增加局部放大
axes('position',[0.2,0.4,0.45,0.5]);%局部放大图位置
plot(num2(:,1),'-','Color','c','LineWidth',1.5);
hold on
plot(num2(:,2),'-','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
plot(num2(:,3),'--','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
plot(num2(:,4),'-','Color',"r",'LineWidth',1.5);
plot(num2(:,5),'-','Color',"green",'LineWidth',1.5);
plot(num2(:,6),'--','Color',"blue",'LineWidth',1.5);
plot(num2(:,7),'--','Color',"black",'LineWidth',1.5);
plot(num2(:,8),'--','Color',"m",'LineWidth',1.5);
plot(num2(:,9),'--','LineWidth',1.5);
axis([0 100 0 50]);%坐标范围设置
set(gca,'YTick',0:10:50,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);