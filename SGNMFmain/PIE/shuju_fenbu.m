%数据分布可视化
% 示例数据
%data = randn(100, 5); % 5个特征
data=feank';
data=fea1';
data=fea';
% 绘制箱线图
figure;
boxplot(data);
xlabel('Feature Index');
ylabel('Value');
title('Box Plot of PIE');
%xticks(1:size(data, 2));  % 设置刻度位置
%n = 1440; % 元胞向量的长度
%emptyCellArray = repmat({''}, 1, n); 
%xticklabels(emptyCellArray);  % 自定义标签

%在MATLAB中进行特征相关性分析可以使用多种方法。以下是一些常用的方法和示例代码：
%data = rand(100, 5); % 示例数据，100个样本，5个特征 相当于5个类别
correlationMatrix = corr(data); % 计算相关系数矩阵
imshow(correlationMatrix)
title('UMIST');

% % 示例数据
% data = randn(1000, 1); % 正态分布数据

% % 绘制密度图
% figure;
% ksdensity(data); % 核密度估计
% xlabel('Value');
% ylabel('Density');
% title('Density Plot');

% 示例数据
% data = rand(10, 10); % 10x10随机数据

% % 绘制热图
% figure;
% heatmap(data(1:100,1:100));
% title('Heatmap');
