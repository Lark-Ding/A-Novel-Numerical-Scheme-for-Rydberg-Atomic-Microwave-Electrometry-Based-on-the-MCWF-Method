%figure7c
clc;
clear;
close all;

load('dC_transmission3.mat')
figure;
hold on
yyaxis left
plot(t_signal,sam,'k','LineWidth',2)
ylabel('Transmission signal')
axis([-0.065, 0.05, -0.12, 0.17]);

yyaxis right
% plot(t_signal,MCWF1,'-.','LineWidth', 1)
plot(t_4,signal_receive_4,'r--','LineWidth',1);
plot(t_signal(11:end),y_fit1(11:end), 'b-.', 'LineWidth', 3)
ylabel('received signal')
legend('E_RF','receive','MCWF');
