clc;clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errcoil20.xlsx'); 
%num2=readmatrix('D:\graduate\matlab\NMF\DABNMTF-main\project\erryale.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Objective function errors on COIL20')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%coil100%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errcoil100.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Objective function errors on COIL100')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FERET%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errFERET.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Objective function errors on FERET')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%GT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errGT.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Objective function errors on GT')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ORL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errORL.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Objective function errors on ORL')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')
							

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PIE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errPIE.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Objective function errors on PIE')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Umist%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errUmist.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Objective function errors on UMIST')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Yale%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\erryale.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Objective function errors on YALE')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%err%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errcoil201.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Approximate function errors on COIL20')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%coil100%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errcoil1001.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Approximate function errors on COIL100')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FERET%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errFERET1.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Approximate function errors on FERET')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%GT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errGT1.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Approximate function errors on GT')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ORL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errORL1.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Approximate function errors on ORL')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')
							

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PIE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errPIE1.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Approximate function errors on PIE')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Umist%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\errUmist1.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Approximate function errors on UMIST')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Yale%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num2=readmatrix('D:\graduate\matlab\NMF\create\ENMF\convergence\erryale1.xlsx'); 
figure
semilogy(num2(:,1),'-*','Color','c','LineWidth',1.5);
hold on
semilogy(num2(:,2),'-*','Color',[0.4940 0.1840 0.5560],'LineWidth',1.5);
semilogy(num2(:,3),'-+','Color',[0.8500 0.3250 0.0980],'LineWidth',1.5);
semilogy(num2(:,4),'-*','Color',"r",'LineWidth',1.5);
semilogy(num2(:,5),'-*','Color',"green",'LineWidth',1.5);
semilogy(num2(:,6),'-+','Color',"blue",'LineWidth',1.5);
semilogy(num2(:,7),'-+','Color',"black",'LineWidth',1.5);
semilogy(num2(:,8),'-+','Color',"m",'LineWidth',1.5);
semilogy(num2(:,9),'-+','Color',[0.4500 0.3250 0.0980],'LineWidth',1.5);
title('Approximate function errors on YALE')
%ylim([1,4e5])

xlabel('iter')
legend('SABNMTF-S','SABNMTF-T','ABNMTF','SGNMF-S','SGNMF-T','GNMF','CNMTF','CSNMF','SDGNMFBO')