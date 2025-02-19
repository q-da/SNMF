clc;clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errcoil20.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function errors on COIL20')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%
%增加局部放大

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%coil100%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errcoil100.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function errors on COIL100')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FERET%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errFERET.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function errors on FERET')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%GT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errGT.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function errors on GT')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ORL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errORL.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function errors on ORL')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PIE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errPIE.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function errors on PIE')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Umist%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\errUmist.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function errors on UMIST')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Yale%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\erryale.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Objective function errors on YALE')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%title('Approximation error of LEABNMTF at COIL20')

num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1coil20.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation function errors on COIL20')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%coil100%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1coil100.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation function errors on COIL100')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FERET%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1FERET.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation function errors on FERET')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%GT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1GT.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation function errors on GT')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ORL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1ORL.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation function errors on ORL')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PIE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1PIE.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation function errors on PIE')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Umist%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1Umist.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation function errors on UMIST')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Yale%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\extend\err1yale.xlsx'); 
figure
semilogy(num2(:,1),'-+','Color',[0.6953 0.7812 0.8594],'LineWidth',1.5);%[0.2656 0.4531 0.7656]
hold on

semilogy(num2(:,4),'-*','Color',[0.3555 .7188 0.3555],'LineWidth',1.5);%[0.9961 0.7539 0.0039]
semilogy(num2(:,5),'-*','Color',[0.9141 0.8242 0.6133],'LineWidth',1.5);%[0.9336 0.4922 0.1992]

semilogy(num2(:,6),'-+','Color',[0.1484 0.2734 0.3242],'LineWidth',1.5);
%plot(num2(:,7),'-*','Color',[0.1562 0.4453 0.4414],'LineWidth',1.5);
%plot(num2(:,8),'-*','Color',[0.1641 0.6133 0.5469],'LineWidth',1.5);
semilogy(num2(:,9),'-*','Color',[0.5391 0.6875 0.4883],'LineWidth',1.5);
semilogy(num2(:,10),'-*','Color',[0.9492 0.6328 0.3789],'LineWidth',1.5);
title('Approximation function errors on YALE')
xlabel('iter')
legend('GNMF','SGNMF-S','SGNMF-T','ABNMTF','SABNMTF-S','SABNMTF-T')%
