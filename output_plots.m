% output plots
clf
%% Grid connected: compare maxRPP, grid support, PQ track for grid frequency deviations

% run1 = load('run1_log.mat');
% run2 = load('run2_log.mat');
% run3 = load('run3_log.mat');
% time = run1.logsout{1}.Values.Time;
% f_B2 = run1.logsout{34}.Values.Data;
% P_WT1 = run1.logsout{18}.Values.Data(:,1)/1e3;
% P_WT2 = run2.logsout{18}.Values.Data(:,1)/1e3;
% P_WT3 = run3.logsout{19}.Values.Data(:,1)/1e3;
% Pcmd_WT3 = squeeze(run3.logsout{29}.Values.Data(1,1,:))*618.46;
% P_grid_req = run3.logsout{22}.Values.Data(:,1)/1e3;
% P_BESS = run3.logsout{17}.Values.Data(:,1)/1e3;
% P_PV = run3.logsout{18}.Values.Data(:,1)/1e3;
% P_grid = run3.logsout{21}.Values.Data(:,1)/1e3;
% P_load = run3.logsout{23}.Values.Data(:,1)/1e3;
% 
% figure(1)
% subplot(3, 1, 1)
% plot(time, f_B2, 'linewidth',1.5)
% ylabel('Grid Frequency (Hz)')
% xlabel('Time (s)')
% 
% subplot(3, 1, 2)
% plot(time, P_WT1)
% hold on
% plot(time, P_WT2, '--')
% plot(time, P_WT3, ':', 'linewidth',2)
% plot(time, Pcmd_WT3, '-.')
% ylabel('Wind turbine real power (kW)')
% xlabel('Time (s)')
% legend('max renewable power', 'grid support', 'power tracking', 'power tracking command')
% 
% subplot(3, 1, 3)
% plot(time, P_grid_req,'linewidth',2)
% hold on
% plot(time, -P_grid, '--', 'linewidth',2)
% plot(time, P_load, '-.')
% plot(time, P_WT3)
% plot(time, P_BESS, '--')
% plot(time, P_PV, ':', 'linewidth',2)
% ylabel('Real power (kW)')
% xlabel('Time (s)')
% legend('microgrid power command', 'microgrid power output', 'load power draw', 'wind power output', 'BESS power output', 'PV power output')

%% Grid connected: compare maxRPP, grid support, PQ track for grid voltage deviations
% 
% run4 = load('run4_log.mat');
% run5 = load('run5_log.mat');
% run6 = load('run6_log.mat');
% time = run4.logsout{1}.Values.Time;
% V_B2 = run4.logsout{32}.Values.Data;
% Q_WT1 = run4.logsout{18}.Values.Data(:,2)/1e3;
% Q_WT2 = run5.logsout{18}.Values.Data(:,2)/1e3;
% Q_WT3 = run6.logsout{19}.Values.Data(:,2)/1e3;
% Qcmd_WT3 = squeeze(run6.logsout{29}.Values.Data(1,2,:))*618.46;
% Qcmd_MG = run6.logsout{22}.Values.Data(:,2)/1e3;
% Q_BESS = run6.logsout{17}.Values.Data(:,2)/1e3;
% Q_PV = run6.logsout{18}.Values.Data(:,2)/1e3;
% Q_grid = run6.logsout{21}.Values.Data(:,2)/1e3;
% Q_load = run6.logsout{23}.Values.Data(:,2)/1e3;
% 
% figure(2)
% subplot(3, 1, 1)
% plot(time, V_B2, 'linewidth',1.5)
% xlim([32 65])
% ylabel('Grid Voltage (p.u.)')
% xlabel('Time (s)')
% 
% subplot(3, 1, 2)
% plot(time, Q_WT1)
% hold on
% plot(time, Q_WT2, '--')
% plot(time, Q_WT3, ':', 'linewidth',2)
% plot(time, Qcmd_WT3, '-.')
% xlim([32 65])
% ylim([-700, 700])
% ylabel('Wind turbine reactive power (kVAR)')
% xlabel('Time (s)')
% legend('max renewable power', 'grid support', 'power tracking', 'power tracking command')
% 
% subplot(3, 1, 3)
% plot(time, Qcmd_MG,'linewidth',2)
% hold on
% plot(time, -Q_grid, '--', 'linewidth',2)
% plot(time, Q_load, '-.')
% plot(time, Q_WT3)
% plot(time, Q_BESS, '--')
% plot(time, Q_PV, ':', 'linewidth',2)
% xlim([32 65])
% ylabel('Reactive power (kVAR)')
% xlabel('Time (s)')
% legend('microgrid power command', 'microgrid power output', 'load power draw', 'wind power output', 'BESS power output', 'PV power output')

%% Grid connected: loSOC prevents MG providing power

% run7 = load('run7_log.mat');
% time = run7.logsout{1}.Values.Time;
% Pcmd_grid = run7.logsout{22}.Values.Data(:,1)/1e3;
% Qcmd_grid = run7.logsout{22}.Values.Data(:,2)/1e3;
% P_grid = run7.logsout{21}.Values.Data(:,1)/1e3;
% Q_grid = run7.logsout{21}.Values.Data(:,2)/1e3;
% Pcmd_WT = squeeze(run7.logsout{29}.Values.Data(1,1,:))*618.46;
% Qcmd_WT = squeeze(run7.logsout{29}.Values.Data(1,2,:))*618.46;
% P_WT = run7.logsout{19}.Values.Data(:,1)/1e3;
% Q_WT = run7.logsout{19}.Values.Data(:,2)/1e3;
% P_PV = run7.logsout{18}.Values.Data(:,1)/1e3;
% Q_PV = run7.logsout{18}.Values.Data(:,2)/1e3;
% P_BESS = run7.logsout{17}.Values.Data(:,1 )/1e3;
% Q_BESS = run7.logsout{17}.Values.Data(:,2)/1e3;
% P_load = run7.logsout{23}.Values.Data(:,1)/1e3;
% Q_load = run7.logsout{23}.Values.Data(:,2)/1e3;
% SOC_BESS = run7.logsout{27}.Values.Data;
% 
% figure(3)
% subplot(3, 1, 1)
% plot(time, Pcmd_grid,'linewidth',2)
% hold on
% plot(time, -P_grid, '--', 'linewidth',2)
% plot(time, P_load, '-.')
% plot(time, P_WT)
% plot(time, P_BESS, '--')
% plot(time, P_PV, ':', 'linewidth',2)
% ylabel('Real power (kW)')
% xlabel('Time (s)')
% xlim([10 40])
% % legend('microgrid power command', 'microgrid power output', 'load power draw', 'wind power output', 'BESS power output', 'PV power output')
% 
% 
% subplot(3, 1, 2)
% plot(time, Qcmd_grid,'linewidth',2)
% hold on
% plot(time, -Q_grid, '--', 'linewidth',2)
% plot(time, Q_load, '-.')
% plot(time, Q_WT)
% plot(time, Q_BESS, '--')
% plot(time, Q_PV, ':', 'linewidth',2)
% xlim([10 40])
% ylim([-1000 1000])
% ylabel('Reactive power (kVAR)')
% xlabel('Time (s)')
% legend('microgrid power command', 'microgrid power output', 'load power draw', 'wind power output', 'BESS power output', 'PV power output')
% 
% subplot(3, 1, 3)
% plot(time, SOC_BESS*100, '--b')
% hold on
% plot(time, 15*ones(length(time)), 'b')
% xlim([10 40])
% ylim([13.8 15.2])
% legend('BESS SOC', 'BESS SOC discharge limit')
% ylabel('BESS SOC (%)')
% xlabel('Time (s)')

%% Grid connected: hiSOC for service provision
% 
% run8 = load('run8_log.mat');
% time = run8.logsout{1}.Values.Time;
% Pcmd_grid = run8.logsout{22}.Values.Data(:,1)/1e3;
% Qcmd_grid = run8.logsout{22}.Values.Data(:,2)/1e3;
% P_grid = run8.logsout{21}.Values.Data(:,1)/1e3;
% Q_grid = run8.logsout{21}.Values.Data(:,2)/1e3;
% Pcmd_WT = squeeze(run8.logsout{29}.Values.Data(1,1,:))*618.46;
% Qcmd_WT = squeeze(run8.logsout{29}.Values.Data(1,2,:))*618.46;
% P_WT = run8.logsout{19}.Values.Data(:,1)/1e3;
% Q_WT = run8.logsout{19}.Values.Data(:,2)/1e3;
% P_PV = run8.logsout{18}.Values.Data(:,1)/1e3;
% Q_PV = run8.logsout{18}.Values.Data(:,2)/1e3;
% P_BESS = run8.logsout{17}.Values.Data(:,1 )/1e3;
% Q_BESS = run8.logsout{17}.Values.Data(:,2)/1e3;
% P_load = run8.logsout{23}.Values.Data(:,1)/1e3;
% Q_load = run8.logsout{23}.Values.Data(:,2)/1e3;
% SOC_BESS = run8.logsout{27}.Values.Data;
% 
% figure(3)
% subplot(3, 1, 1)
% plot(time, Pcmd_grid,'linewidth',2)
% hold on
% plot(time, -P_grid, '--', 'linewidth',2)
% plot(time, P_load, '-.')
% plot(time, P_WT)
% plot(time, P_BESS, '--')
% plot(time, P_PV, ':', 'linewidth',2)
% ylabel('Real power (kW)')
% xlabel('Time (s)')
% xlim([10 40])
% ylim([-200 1200])
% legend('microgrid power command', 'microgrid power output', 'load power draw', 'wind power output', 'BESS power output', 'PV power output')
% 
% subplot(3, 1, 2)
% plot(time, Qcmd_grid,'linewidth',2)
% hold on
% plot(time, -Q_grid, '--', 'linewidth',2)
% plot(time, Q_load, '-.')
% plot(time, Q_WT)
% plot(time, Q_BESS, '--')
% plot(time, Q_PV, ':', 'linewidth',2)
% xlim([10 40])
% ylim([-200 1200])
% ylabel('Reactive power (kVAR)')
% xlabel('Time (s)')
% % legend('microgrid power command', 'microgrid power output', 'load power draw', 'wind power output', 'BESS power output', 'PV power output')
% 
% subplot(3, 1, 3)
% plot(time, SOC_BESS*100+1)
% xlim([10 40])
% ylabel('BESS SOC (%)')
% xlabel('Time (s)')

%% Unplanned Islanding from frequency : compare different WT modes -
% no meaningful difference

% run10 = load('run10_log.mat');
% run11 = load('run11_log.mat');
% run12 = load('run12_log.mat');
% time = run10.logsout{1}.Values.Time;
% f_B2 = run10.logsout{35}.Values.Data;
% f_B13_1 = run10.logsout{34}.Values.Data;
% f_B13_2 = run11.logsout{33}.Values.Data;
% f_B13_3 = run12.logsout{33}.Values.Data;
% V_B2 = run10.logsout{32}.Values.Data;
% V_B13_1 = run10.logsout{33}.Values.Data;
% V_B13_2 = run11.logsout{32}.Values.Data;
% V_B13_3 = run12.logsout{32}.Values.Data;
% P_WT1 = run10.logsout{19}.Values.Data(:,1)/1e3;
% P_WT2 = run11.logsout{18}.Values.Data(:,1)/1e3;
% P_WT3 = run12.logsout{18}.Values.Data(:,1)/1e3;
% Q_WT1 = run10.logsout{19}.Values.Data(:,2)/1e3;
% Q_WT2 = run11.logsout{18}.Values.Data(:,2)/1e3;
% Q_WT3 = run12.logsout{18}.Values.Data(:,2)/1e3;
% Pcmd_WT3 = squeeze(run12.logsout{29}.Values.Data(1,1,:))*618.46;
% P_grid_req = run12.logsout{22}.Values.Data(:,1)/1e3;
% P_BESS = run12.logsout{17}.Values.Data(:,1)/1e3;
% P_PV = run12.logsout{18}.Values.Data(:,1)/1e3;
% P_grid = run12.logsout{21}.Values.Data(:,1)/1e3;
% P_load = run12.logsout{23}.Values.Data(:,1)/1e3;
% 
% figure(1)
% subplot(2, 1, 1)
% plot(time, f_B2, '--')
% hold on
% plot(time, f_B13_1, 'linewidth',1.5)
% plot(time, f_B13_2)
% plot(time, f_B13_3, ':', 'linewidth',1.5)
% ylabel('Microgrid Frequency (Hz)')
% xlabel('Time (s)')
% legend('grid frequency', 'max renewable power', 'grid support', 'power tracking')
% 
% subplot(2, 1, 2)
% plot(time, P_WT1, 'linewidth',1.5)
% hold on
% plot(time, P_WT2)
% plot(time, P_WT3, ':', 'linewidth',1.5)
% ylabel('Wind turbine real power (kW)')
% xlabel('Time (s)')
% legend('max renewable power', 'grid support', 'power tracking')
% 
% figure(3)
% subplot(2, 1, 1)
% plot(time, V_B2, '--')
% hold on
% plot(time, V_B13_1, 'linewidth',1.5)
% plot(time, V_B13_2)
% plot(time, V_B13_3, ':', 'linewidth',1.5)
% xlim([32 50])
% ylabel('Microgrid Voltage (V)')
% xlabel('Time (s)')
% legend('grid voltage', 'power tracking', 'grid support','max renewable power')
% 
% subplot(2, 1, 2)
% plot(time, Q_WT1, 'linewidth',1.5)
% hold on
% plot(time, Q_WT2)
% plot(time, Q_WT3, ':', 'linewidth',1.5)
% xlim([32 50])
% ylabel('Wind turbine reactive power (kVAR)')
% xlabel('Time (s)')
% legend('power tracking', 'grid support','max renewable power')

%% Unplanned Islanding from voltage fault: compare different WT modes 

run19 = load('run19_log.mat');
run20 = load('run20_log.mat');
run21 = load('run21_log.mat');
run23 = load('run23_log.mat');
run24 = load('run24_log.mat');
time = linspace(30, 50, 201);
time_1 = run19.logsout{1}.Values.Time;
time_2 = run20.logsout{1}.Values.Time;
time_3 = run21.logsout{1}.Values.Time;
time_4 = run23.logsout{1}.Values.Time;
time_5 = run24.logsout{1}.Values.Time;
time_6 = linspace(30, 50, 1000001);
f_B13_1 = run19.logsout{1}.Values.Data;
f_B13_2 = run20.logsout{1}.Values.Data;
f_B13_3 = run21.logsout{1}.Values.Data;
f_B13_4 = run23.logsout{1}.Values.Data;
f_B13_5 = run24.logsout{1}.Values.Data;
V_B2 = run19.logsout{36}.Values.Data;
V_B13_1 = run19.logsout{2}.Values.Data;
V_B13_2 = run20.logsout{2}.Values.Data;
V_B13_3 = run21.logsout{2}.Values.Data;
V_B13_4 = run23.logsout{2}.Values.Data;
V_B13_5 = run24.logsout{2}.Values.Data;
P_WT1 = run19.logsout{3}.Values.Data(:,1)/1e3;
P_WT2 = run20.logsout{3}.Values.Data(:,1)/1e3;
P_WT3 = run21.logsout{3}.Values.Data(:,1)/1e3;
P_WT4 = run23.logsout{3}.Values.Data(:,1)/1e3;
P_WT5 = run24.logsout{3}.Values.Data(:,1)/1e3;
Q_WT1 = run19.logsout{3}.Values.Data(:,2)/1e3;
Q_WT2 = run20.logsout{3}.Values.Data(:,2)/1e3;
Q_WT3 = run21.logsout{3}.Values.Data(:,2)/1e3;
Q_WT4 = run23.logsout{3}.Values.Data(:,2)/1e3;
Q_WT5 = run24.logsout{3}.Values.Data(:,2)/1e3;
% Pcmd_WT3 = squeeze(run12.logsout{29}.Values.Data(1,1,:))*618.46;
% P_grid_req = run12.logsout{22}.Values.Data(:,1)/1e3;
% P_BESS = run12.logsout{17}.Values.Data(:,1)/1e3;
% P_PV = run12.logsout{18}.Values.Data(:,1)/1e3;
% P_grid = run12.logsout{21}.Values.Data(:,1)/1e3;
% P_load = run12.logsout{23}.Values.Data(:,1)/1e3;

figure(1)
subplot(2, 1, 1)
hold on
plot(time_1, f_B13_1, 'linewidth',1.5)
plot(time_2, f_B13_2)
plot(time_3, f_B13_3, ':', 'linewidth',1.5)
ylabel('Microgrid Frequency (Hz)')
xlabel('Time (s)')
legend('power tracking', 'grid support', 'max renewable power')

subplot(2, 1, 2)
plot(time_6, P_WT1, 'linewidth',1.5)
hold on
plot(time_6, P_WT2)
plot(time_6, P_WT3, ':', 'linewidth',1.5)
ylabel('Wind turbine real power (kW)')
xlabel('Time (s)')
legend('power tracking', 'grid support', 'max renewable power')

figure(2)
subplot(2, 1, 1)
% plot(time, V_B2, '--')
hold on
plot(time_6, V_B13_1, 'linewidth',1.5)
plot(time_6, V_B13_2)
plot(time_6, V_B13_3, ':', 'linewidth',1.5)
plot([40, 40], [-9999, 9999], '-k')
% plot(time_6, V_B13_4)
% plot(time_6, V_B13_5)

xlim([39.5 41.5])
ylim([0.3 1.3])
ylabel('Microgrid Voltage (p.u.)')
xlabel('Time (s)')
legend('power tracking', 'grid support', 'max renewable power')
% legend('grid voltage', 'power tracking', 'grid support','max renewable power')

subplot(2, 1, 2)
plot(time_6, Q_WT1, 'linewidth',1.5)
hold on
plot(time_6, Q_WT2)
plot(time_6, Q_WT3, ':', 'linewidth',1.5)
plot([40, 40], [-9999, 9999], '-k')
% plot(time_6, Q_WT4)
% plot(time_6, Q_WT5)
xlim([39.5 41.5])
ylim([-400 600])
ylabel('Wind turbine reactive power (kVAR)')
xlabel('Time (s)')
legend('power tracking', 'grid support', 'max renewable power')
legend('power tracking', 'grid support','max renewable power')

%% Planned Islanding: unable to model more interesting cases...

% run13 = load('run13_log.mat');
% time = run13.logsout{1}.Values.Time;
% f_B13 = run13.logsout{33}.Values.Data;
% V_B13 = run13.logsout{32}.Values.Data;
% P_WT = run13.logsout{18}.Values.Data(:,1)/1e3;
% Q_WT = run13.logsout{18}.Values.Data(:,2)/1e3;
% P_BESS = run13.logsout{16}.Values.Data(:,1)/1e3;
% Q_BESS = run13.logsout{16}.Values.Data(:,2)/1e3;
% P_PV = run13.logsout{17}.Values.Data(:,1)/1e3;
% Q_PV = run13.logsout{17}.Values.Data(:,2)/1e3;
% P_grid = run13.logsout{20}.Values.Data(:,1)/1e3;
% Q_grid = run13.logsout{20}.Values.Data(:,2)/1e3;
% P_load = run13.logsout{22}.Values.Data(:,1)/1e3;
% Q_load = run13.logsout{22}.Values.Data(:,2)/1e3;
% 
% figure(1)
% subplot(3, 1, 1)
% yyaxis left
% plot(time, f_B13)
% ylabel('Microgrid Frequency (Hz)')
% ylim([58 62])
% hold on
% yyaxis right
% plot(time, V_B13, ':', 'linewidth', 1.5)
% plot([14, 14], [-9999, 9999], '-k')
% xlim([5, 30])
% ylim([0.8 1.2])
% xticks(6:2:30)
% ylabel('Microgrid Voltage (p.u.)')
% xlabel('Time (s)')
% 
% subplot(3, 1, 2)
% plot(time, P_WT, 'linewidth',1.5)
% hold on
% plot(time, P_BESS)
% plot(time, P_PV, ':', 'linewidth', 1.5)
% plot(time, -P_grid, '-.')
% plot(time, P_load, '--')
% plot([14, 14], [-9999, 9999], '-k')
% xlim([5, 30])
% ylim([-600, 1200])
% xticks(6:2:30)
% ylabel('Real power (kW)')
% xlabel('Time (s)')
% % legend('wind turbine', 'BESS', 'PV', 'grid export', 'load')
% 
% subplot(3, 1, 3)
% plot(time, Q_WT, 'linewidth',1.5)
% hold on
% plot(time, Q_BESS)
% plot(time, Q_PV, ':', 'linewidth', 1.5)
% plot(time, -Q_grid, '-.')
% plot(time, Q_load, '--')
% plot([14, 14], [-9999, 9999], '-k')
% xlim([5, 30])
% ylim([-600, 1200])
% xticks(6:2:30)
% ylabel('Reactive power (kVAR)')
% xlabel('Time (s)')
% legend('wind turbine', 'BESS', 'PV', 'grid export', 'load')

%% Grid connectuion due to renewable surplus and grid need
% run25 = load('run25_log.mat');
% time = run25.logsout{38}.Values.Time;
% f_B13 = run25.logsout{38}.Values.Data;
% V_B13 = run25.logsout{37}.Values.Data;
% P_WT = run25.logsout{23}.Values.Data(:,1)/1e3;
% P_BESS = run25.logsout{21}.Values.Data(:,1)/1e3;
% P_PV = run25.logsout{22}.Values.Data(:,1)/1e3;
% P_grid = run25.logsout{25}.Values.Data(:,1)/1e3;
% P_load = run25.logsout{27}.Values.Data(:,1)/1e3;
% P_grid_req = run25.logsout{26}.Values.Data(:,1)/1e3; 
% 
% figure(1)
% subplot(2, 1, 1)
% yyaxis left
% plot(time, f_B13)
% ylabel('Microgrid Frequency (Hz)')
% ylim([58 62])
% hold on
% yyaxis right
% plot(time, V_B13, ':', 'linewidth', 1.5)
% plot([24.5, 24.5], [-9999, 9999], '-k')
% ylim([0.8 1.2])
% xlim([20 40])
% xticks(20:2:40)
% ylabel('Microgrid Voltage (p.u.)')
% xlabel('Time (s)')
% 
% subplot(2, 1, 2)
% plot(time, P_WT, 'linewidth',1.5)
% hold on
% plot(time, P_BESS)
% plot(time, P_PV, ':', 'linewidth', 1.5)
% plot(time, -P_grid, '-.')
% plot(time, P_load, '--')
% plot([24.5, 24.5], [-9999, 9999], '-k')
% ylim([-600 800])
% xlim([20 40])
% xticks(20:2:40)
% ylabel('Real power (kW)')
% xlabel('Time (s)')
% legend('wind turbine', 'BESS', 'PV', 'grid export', 'load')

%% Islanded mode 3 phase fault - need to redo runs with higher fidelity logging
% run15 = load('run15_log.mat');
% run16 = load('run16_log.mat');
% downsample = 1000;
% time_1 = run15.logsout{1}.Values.Time(1:downsample:end); % logged timeseries are different lengths! Mix and match to make it work...
% time_2 = run16.logsout{1}.Values.Time(1:downsample:end); 
% time_3 = linspace(0, 15, 750001); time_3 = time_3(1:downsample:end);
% 
% f_B13_1 = run15.logsout{1}.Values.Data(1:downsample:end);
% V_B13_1 = run15.logsout{2}.Values.Data(1:downsample:end);
% P_WT_1 = run15.logsout{3}.Values.Data(:,1)/1e3; P_WT_1 = P_WT_1(1:downsample:end);
% Q_WT_1 = run15.logsout{3}.Values.Data(:,2)/1e3; Q_WT_1 = Q_WT_1(1:downsample:end);
% f_B13_2 = run16.logsout{1}.Values.Data(1:downsample:end); 
% V_B13_2 = run16.logsout{2}.Values.Data(1:downsample:end);
% P_WT_2 = run16.logsout{3}.Values.Data(:,1)/1e3; P_WT_2 = P_WT_2(1:downsample:end);
% Q_WT_2 = run16.logsout{3}.Values.Data(:,2)/1e3; Q_WT_2 = Q_WT_2(1:downsample:end);
% 
% figure(1)
% subplot(2, 1, 1)
% yyaxis left
% plot(time_3, V_B13_1, 'b', 'linewidth', 1.5)
% hold on
% plot(time_3, V_B13_2, 'b-')
% xlim([9 12])
% ylim([0 1.5])
% ylabel('Microgrid Voltage (p.u.)')
% yyaxis right
% plot(time_1, f_B13_1, 'r:', 'linewidth', 1.5)
% hold on
% plot(time_2, f_B13_2, 'r--')
% ylabel('Microgrid Frequency (Hz)')
% ylim([58 62])
% xlabel('Time (s)')
% legend('voltage, WT response', 'voltage, WT MPPT', 'frequency, WT response', 'frequency, WT MPPT')  
% 
% subplot(2, 1, 2)
% plot(time_3, Q_WT_1, 'b', 'linewidth', 1.5)
% hold on
% plot(time_3, Q_WT_2, 'b-')
% plot(time_3, P_WT_1, 'r:', 'linewidth',1.5)
% plot(time_3, P_WT_2, 'r--')
% xlim([9 12])
% ylim([-1200 1000])
% ylabel('Wind turbine power (kW/kVAR)')
% xlabel('Time (s)')
% legend('reactive power, WT response', 'reactive power, WT MPPT', 'real power, WT response', 'real power, WT MPPT')

%% Islanded preparation for renewable deficit
% fixed BESS SOC to f setpoint control
% run17 = load('run17_log.mat');
% run18 = load('run18_log.mat');
% time = run17.logsout{1}.Values.Time;
% P_WT_1 = run17.logsout{19}.Values.Data(:,1)/1e3;
% P_BESS_1 = run17.logsout{17}.Values.Data(:,1)/1e3;
% P_PV_1 = run17.logsout{18}.Values.Data(:,1)/1e3;
% P_load_1 = run17.logsout{23}.Values.Data(:,1)/1e3;
% SOC_BESS_1 = run17.logsout{27}.Values.Data;
% P_WT_2 = run18.logsout{19}.Values.Data(:,1)/1e3;
% P_BESS_2 = run18.logsout{17}.Values.Data(:,1)/1e3;
% P_PV_2 = run18.logsout{18}.Values.Data(:,1)/1e3;
% P_load_2 = run18.logsout{23}.Values.Data(:,1)/1e3;
% SOC_BESS_2 = run18.logsout{27}.Values.Data;
% 
% figure(1)
% subplot(2, 1, 1)
% yyaxis left
% plot(time, P_WT_1, 'linewidth', 1.5)
% hold on
% plot(time, P_BESS_1, '-.', 'linewidth', 1.5)
% plot(time, P_PV_1, '-')
% plot(time, P_load_1, ':', 'linewidth', 1.5)
% ylabel('Real Power (kW)')
% yyaxis right
% plot(time, SOC_BESS_1*100, '--', 'linewidth', 1.5)
% xlim([10 36])
% % plot([34, 34], [-9999, 9999], '-k')
% % ylim([0.8 1.2])
% xticks(10:2:36)
% ylabel('BESS SOC (%)')
% xlabel('Time (s)')
% % legend('WT power', 'BESS power', 'PV power', 'load power', 'BESS SOC')  
% 
% subplot(2, 1, 2)
% yyaxis left
% plot(time, P_WT_2, 'linewidth', 1.5)
% hold on
% plot(time, P_BESS_2, '-.', 'linewidth', 1.5)
% plot(time, P_PV_2, '-')
% plot(time, P_load_2, ':', 'linewidth', 1.5)
% ylabel('Real Power (kW)')
% yyaxis right
% plot(time, SOC_BESS_2*100, '--', 'linewidth', 1.5)
% xlim([10 36])
% % plot([34, 34], [-9999, 9999], '-k')
% % ylim([0.8 1.2])
% xticks(10:2:36)
% ylabel('BESS SOC (%)')
% xlabel('Time (s)')
% legend('WT power', 'BESS power', 'PV power', 'load power', 'BESS SOC') 
% % 
% % 
% % 
% % 
% % 
% % 
% % 
% % 
% % 
