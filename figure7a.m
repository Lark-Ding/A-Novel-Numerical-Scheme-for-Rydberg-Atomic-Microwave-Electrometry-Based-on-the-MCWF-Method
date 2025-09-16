%figure7c
clc;
clear;
close all;

load('dC_transmission2_1.mat')
figure
grid on;
set(gca, 'FontSize', 12, 'FontName', 'Times New Roman');
hold on; box on;

yyaxis left
axis([-0.050, 0.05, -0.12, 0.15]);
plot(t_1,sam(1:end-32), 'k','LineWidth', 2)
ylabel('Transmission signal', 'FontSize', 14, 'FontName', 'Times New Roman')

yyaxis right
axis([-0.050, 0.05, -0.020, 0.025]);
plot(t_3,signal_receive_3,'r--', 'LineWidth', 2)
% plot(t_signal+0.006725,MCWF1,'-.')
plot(t_signal(1:end-32)+0.006725,y_fit1(1:end-32), 'b-.', 'LineWidth', 2)
legend('Transmission Signal','Received Signal', 'MCWF','FontSize', 14, 'FontName', 'Times New Roman');
xlabel('Time(s)', 'FontSize', 14, 'FontName', 'Times New Roman')
ylabel('Received Rignal Amplitude', 'FontSize', 14, 'FontName', 'Times New Roman')
title('Sine Wave Signal', 'FontSize', 18, 'FontName', 'Times New Roman');
