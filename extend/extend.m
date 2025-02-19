clc;clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errcoil20.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Objective function error of EGNMF at COIL20')
ylim([1,300])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 50]);%坐标范围设置
set(gca,'YTick',0:10:50,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function error of EABNMTF at COIL20')
ylim([1,1000])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 150]);%坐标范围设置
set(gca,'YTick',0:30:150,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%coil100%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errcoil100.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Objective function error of EGNMF at COIL100')
ylim([1,250])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 50]);%坐标范围设置
set(gca,'YTick',0:10:50,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function error of EABNMTF at COIL100')
ylim([1,500])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 150]);%坐标范围设置
set(gca,'YTick',0:30:150,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FERET%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errFERET.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Objective function error of EGNMF at FERET')
ylim([1,100])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 5]);%坐标范围设置
set(gca,'YTick',0:1:5,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function error of EABNMTF at FERET')
ylim([1,300])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 20]);%坐标范围设置
set(gca,'YTick',0:4:20,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%GT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errGT.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Objective function error of EGNMF at GT')
ylim([1,100])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 10]);%坐标范围设置
set(gca,'YTick',0:2:10,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function error of EABNMTF at GT')
ylim([1,300])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 25]);%坐标范围设置
set(gca,'YTick',0:5:25,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ORL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errORL.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Objective function error of EGNMF at ORL')
ylim([1,100])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 10]);%坐标范围设置
set(gca,'YTick',0:2:10,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function error of EABNMTF at ORL')
ylim([1,300])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 25]);%坐标范围设置
set(gca,'YTick',0:5:25,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PIE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errPIE.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Objective function error of EGNMF at PIE')
ylim([1,150])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 50]);%坐标范围设置
set(gca,'YTick',0:10:50,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function error of EABNMTF at PIE')
ylim([1,400])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','LEABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 100]);%坐标范围设置
set(gca,'YTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Umist%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errUmist.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Objective function error of EGNMF at Umist')
ylim([1,100])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 30]);%坐标范围设置
set(gca,'YTick',0:6:30,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function error of EABNMTF at Umist')
ylim([1,300])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 35]);%坐标范围设置
set(gca,'YTick',0:7:35,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Yale%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\erryale.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Objective function error of EGNMF at Yale')
ylim([1,100])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 30]);%坐标范围设置
set(gca,'YTick',0:6:30,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function error of EABNMTF at Yale')
ylim([1,300])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 35]);%坐标范围设置
set(gca,'YTick',0:7:35,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%title('Approximation error of LEABNMTF at COIL20')

num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1coil20.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Approximation error of EGNMF at COIL20')
ylim([1,300])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 50]);%坐标范围设置
set(gca,'YTick',0:10:50,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation error of EABNMTF at COIL20')
ylim([1,300])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 60]);%坐标范围设置
set(gca,'YTick',0:12:60,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%coil100%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1coil100.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Approximation error of EGNMF at COIL100')
ylim([1,250])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 50]);%坐标范围设置
set(gca,'YTick',0:10:50,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation error of EABNMTF at COIL100')
ylim([1,300])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 60]);%坐标范围设置
set(gca,'YTick',0:12:60,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FERET%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1FERET.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Approximation error of EGNMF at FERET')
ylim([1,50])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 5]);%坐标范围设置
set(gca,'YTick',0:1:5,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation error of EABNMTF at FERET')
ylim([1,200])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 20]);%坐标范围设置
set(gca,'YTick',0:4:20,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%GT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1GT.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Approximation error of EGNMF at GT')
ylim([1,100])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 10]);%坐标范围设置
set(gca,'YTick',0:2:10,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation error of EABNMTF at GT')
ylim([1,300])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 25]);%坐标范围设置
set(gca,'YTick',0:5:25,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ORL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1ORL.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Approximation error of EGNMF at ORL')
ylim([1,100])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 10]);%坐标范围设置
set(gca,'YTick',0:2:10,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation error of EABNMTF at ORL')
ylim([1,300])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 25]);%坐标范围设置
set(gca,'YTick',0:5:25,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PIE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1PIE.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Approximation error of EGNMF at PIE')
ylim([1,150])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 30]);%坐标范围设置
set(gca,'YTick',0:6:30,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation error of EABNMTF at PIE')
ylim([1,400])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','LEABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 60]);%坐标范围设置
set(gca,'YTick',0:12:60,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Umist%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1Umist.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Approximation error of EGNMF at Umist')
ylim([1,100])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 15]);%坐标范围设置
set(gca,'YTick',0:5:15,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation error of EABNMTF at Umist')
ylim([1,300])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 35]);%坐标范围设置
set(gca,'YTick',0:7:35,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Yale%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1yale.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
title('Approximation error of EGNMF at Yale')
ylim([1,100])
xlabel('iter')
legend('GNMF','EGNMF1','EGNMF2','EGNMF3','EGNMF4')%,'ABNMTF','LEABNMTF1','LEABNMTF2'
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,1),'-o','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on
plot(num2(:,2),'-*','Color',[0.1953 0.3438 0.5234],'LineWidth',1.5);%[0.3438 0.6094 0.8359]
plot(num2(:,3),'-*','Color',[ 0.2773 0.7148 0.8516],'LineWidth',1.5);%[0.4336 0.6797 0.2695]
plot(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
plot(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]
axis([0 100 0 20]);%坐标范围设置
set(gca,'YTick',0:4:20,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);

figure	
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation error of EABNMTF at Yale')
ylim([1,300])
xlabel('iter')
legend('ABNMTF','EABNMTF1','EABNMTF2','EABNMTF3','EABNMTF4')%
%增加局部放大
axes('position',[0.3,0.25,0.5,0.4]);%局部放大图位置
plot(num2(:,6),'-o','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
hold on
plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
plot(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
plot(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
axis([0 100 0 35]);%坐标范围设置
set(gca,'YTick',0:7:35,'FontName','Arial','FontSize',10,'FontWeight','bold');%y坐标轴设置
set(gca,'XTick',0:20:100,'FontName','Arial','FontSize',10,'FontWeight','bold');%x坐标轴设置
set(gca,'LineWidth',1.5);
