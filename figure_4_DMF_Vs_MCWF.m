clc;
clear;
close all;

% 加载 DM-25MHz 代码
load('parallel_dt_test_25M_DP_DM.mat')
P_DM_25mhz = imag(rho12_D);
P_DM_25mhz = P_DM_25mhz - min(P_DM_25mhz);
P_DM_25mhz = P_DM_25mhz / max(P_DM_25mhz);



% 加载 MCWF-25MHz 代码
load('a_remark2_figure4_1.mat')
P_MCWF_25mhz = P_MCWF_25mhz- min(P_MCWF_25mhz);   % 抬高
P_MCWF_25mhz = P_MCWF_25mhz / max(P_MCWF_25mhz);   % 归一化



figure;
hold on
plot(DeltaP_DM/2/pi/1e6,P_DM_25mhz)
title("25M")
plot(DeltaP_MCWF_25/2/pi/1e6,P_MCWF_25mhz )
xlim([-15,15])

