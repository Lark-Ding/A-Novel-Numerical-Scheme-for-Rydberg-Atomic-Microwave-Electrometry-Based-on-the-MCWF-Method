clc;
clear;
close all;
% 加载数据
load('case1_Fig2andFig3_2RK.mat')

% 总概率
P_total = (P_1_MCWF + P_2_MCWF + P_3_MCWF + P_4_MCWF)';
rho_total = abs(rho11) + abs(rho22) + abs(rho33) + abs(rho44);

r1=abs(rho11);
r2=abs(rho22);
r3=abs(rho33);
r4=abs(rho44);
t=t';
P1=P_1_MCWF';
P2=P_2_MCWF';
P3=P_3_MCWF';
P4=P_4_MCWF';

% 配色（深浅搭配）
dm_color1 = [0, 0, 0.6];        mcwf_color1 = [0.6, 0.6, 1];
dm_color2 = [0.6, 0, 0];        mcwf_color2 = [1, 0.6, 0.6];
dm_color3 = [0.85, 0.4, 0];     mcwf_color3 = [1, 0.75, 0.5];
dm_color4 = [0, 0.5, 0];        mcwf_color4 = [0.6, 0.9, 0.6];
dm_color5 = [0, 0, 0];          mcwf_color5 = [0.6, 0.6, 0.6];

% 标记索引
nMarkers = 40;
markerInd = round(linspace(1, length(t), nMarkers));

% 绘图
figure('Color', 'w'); hold on; box on; grid on;
set(gca, 'FontSize', 28, 'FontName', 'Times New Roman');

% ========== 密度矩阵方法（深色实线） ==========
plot(t, abs(rho11), '-', 'Color', dm_color1, 'LineWidth', 2);
plot(t, abs(rho22), '-', 'Color', dm_color2, 'LineWidth', 2);
plot(t, abs(rho33), '-', 'Color', dm_color3, 'LineWidth', 2);
plot(t, abs(rho44), '-', 'Color', dm_color4, 'LineWidth', 2);
plot(t, rho_total,      '-', 'Color', dm_color5, 'LineWidth', 2.2);

% ========== MCWF 方法（浅色虚线 + 实心圆圈） ==========
plot(t, P_1_MCWF, '--', 'Color', mcwf_color1, 'LineWidth', 2.5, 'HandleVisibility','off');
plot(t(markerInd), P_1_MCWF(markerInd), 'o', 'Color', mcwf_color1, ...
    'MarkerSize', 5, 'MarkerFaceColor', mcwf_color1, 'HandleVisibility','off');

plot(t, P_2_MCWF, '--', 'Color', mcwf_color2, 'LineWidth', 2.5, 'HandleVisibility','off');
plot(t(markerInd), P_2_MCWF(markerInd), 'o', 'Color', mcwf_color2, ...
    'MarkerSize', 5, 'MarkerFaceColor', mcwf_color2, 'HandleVisibility','off');

plot(t, P_3_MCWF, '--', 'Color', mcwf_color3, 'LineWidth', 2.5, 'HandleVisibility','off');
plot(t(markerInd), P_3_MCWF(markerInd), 'o', 'Color', mcwf_color3, ...
    'MarkerSize', 5, 'MarkerFaceColor', mcwf_color3, 'HandleVisibility','off');

plot(t, P_4_MCWF, '--', 'Color', mcwf_color4, 'LineWidth', 2.5, 'HandleVisibility','off');
plot(t(markerInd), P_4_MCWF(markerInd), 'o', 'Color', mcwf_color4, ...
    'MarkerSize', 5, 'MarkerFaceColor', mcwf_color4, 'HandleVisibility','off');

plot(t, P_total, '--', 'Color', mcwf_color5, 'LineWidth', 2.5, 'HandleVisibility','off');
plot(t(markerInd), P_total(markerInd), 'o', 'Color', mcwf_color5, ...
    'MarkerSize', 5, 'MarkerFaceColor', mcwf_color5, 'HandleVisibility','off');

% ========== 构造组合图例项 ==========
h_dm1 = plot(nan, nan, '-',  'Color', dm_color1, 'LineWidth', 3, 'DisplayName', '\rho_{11} (DM)');
h_mcwf1 = plot(nan, nan, '--o', 'Color', mcwf_color1, 'MarkerFaceColor', mcwf_color1, ...
    'MarkerSize', 5, 'DisplayName', 'P_1 (MCWF)');

h_dm2 = plot(nan, nan, '-',  'Color', dm_color2, 'LineWidth', 3, 'DisplayName', '\rho_{22} (DM)');
h_mcwf2 = plot(nan, nan, '--o', 'Color', mcwf_color2, 'MarkerFaceColor', mcwf_color2, ...
    'MarkerSize', 5, 'DisplayName', 'P_2 (MCWF)');

h_dm3 = plot(nan, nan, '-',  'Color', dm_color3, 'LineWidth', 3, 'DisplayName', '\rho_{33} (DM)');
h_mcwf3 = plot(nan, nan, '--o', 'Color', mcwf_color3, 'MarkerFaceColor', mcwf_color3, ...
    'MarkerSize', 5, 'DisplayName', 'P_3 (MCWF)');

h_dm4 = plot(nan, nan, '-',  'Color', dm_color4, 'LineWidth', 3, 'DisplayName', '\rho_{44} (DM)');
h_mcwf4 = plot(nan, nan, '--o', 'Color', mcwf_color4, 'MarkerFaceColor', mcwf_color4, ...
    'MarkerSize', 5, 'DisplayName', 'P_4 (MCWF)');

h_dmT = plot(nan, nan, '-',  'Color', dm_color5, 'LineWidth', 3.2, 'DisplayName', 'Tr(\rho) (DM)');
h_mcwfT = plot(nan, nan, '--o', 'Color', mcwf_color5, 'MarkerFaceColor', mcwf_color5, ...
    'MarkerSize', 5, 'DisplayName', 'Total P (MCWF)');

% ========== 图注、轴标签、美化 ==========
legend([h_dm1 h_mcwf1 h_dm2 h_mcwf2 h_dm3 h_mcwf3 ...
        h_dm4 h_mcwf4 h_dmT h_mcwfT], ...
        'Location', 'northeastoutside', 'FontSize', 22);

xlabel('Time (\mus)', 'FontSize', 28);
ylabel('Population Probability', 'FontSize', 28);
title('Rabi Oscillations of Four-Level System', 'FontSize', 30);
% set(gca, 'FontSize', 12, 'LineWidth', 1.2);



