%figure7b
clc;
clear;
close all;

load('dC_transmission4.mat');
figure
grid on;
set(gca, 'FontSize', 12, 'FontName', 'Times New Roman');
hold on; box on;
yyaxis left
axis([-0.055, 0.052, -1.1, 1.4]);
plot(t_1_sample,sam,'k','LineWidth',2)
ylabel('Transmission signal', 'FontSize', 14, 'FontName', 'Times New Roman')

yyaxis right
axis([-0.055, 0.05, 0.55, 0.61]);
plot(t_1,signal_receive_1,'r--','LineWidth',2);
plot(t_1_sample,y_fit3, 'b-.', 'LineWidth', 2)
legend('Transmission Signal','Received Signal', 'MCWF', 'FontSize', 14, 'FontName', 'Times New Roman');
xlabel('Time(s)', 'FontSize', 14, 'FontName', 'Times New Roman')
ylabel('Received Signal', 'FontSize', 14, 'FontName', 'Times New Roman')
title('Square Wave Signal', 'FontSize', 18, 'FontName', 'Times New Roman');