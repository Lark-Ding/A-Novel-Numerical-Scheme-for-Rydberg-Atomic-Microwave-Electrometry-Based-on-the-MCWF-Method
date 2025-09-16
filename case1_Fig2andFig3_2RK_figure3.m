clc;
clear;
close all;
% 加载数据
load('case1_Fig2andFig3_2RK.mat')

P21_imag = imag(a_b)';
tho21_imag =imag(rho21);
nMarkers = 60;
marker_idx = round(linspace(1, length(t), nMarkers));

figure('Color', 'w');
hold on; box on; grid on;
set(gca, 'FontSize', 12, 'FontName', 'Times New Roman');

% 绘制 Runge-Kutta 方法（密度矩阵法）
plot(t, imag(rho21), 'b-', 'LineWidth', 2.5);

% 绘制 MCWF 方法（带点标记的点虚线）
plot(t, imag(a_b), '--', 'LineWidth', 2, 'Color', [1, 0.5, 0], 'HandleVisibility', 'off');
plot(t(marker_idx), imag(a_b(marker_idx)), 'o', 'MarkerSize', 6, 'MarkerFaceColor', [1, 0.5, 0], ...
     'Color', [1, 0.5, 0], 'DisplayName', 'MCWF');

% 图例与标题
legend({'DM', 'MCWF'}, 'FontSize', 14, 'Location', 'northeast');
xlabel('Time (\mus)', 'FontSize', 14);
ylabel('Imaginary Part of \rho_{21}', 'FontSize', 14);
title('Compare the Imaginary Part of \rho_{21}', 'FontSize', 20);

