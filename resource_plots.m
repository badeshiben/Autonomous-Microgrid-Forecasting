% resource plots 
clf

%Building loads
% data = xlsread('20200328_building_load_1Hz.xlsx', 'Sheet1');
data = xlsread('Building_Load.xlsx', '032820-0835');
% data = xlsread('Building_Loads_TV.xlsx', '031320-031420');
figure(1)
plot(data(:,1), data(:,2))
hold on
plot(data(:,1), data(:,3))
legend('real', 'reactive')
xlabel('m')
ylabel('kW')
% 
%M2 wind speed, using 50m height
% data = xlsread('WS.xlsx', 'constant');
% figure(2)
% WS = data(:,2)*(50/36.6)^0.14;
% plot(data(:,1), WS)
% legend('WS')
% xlabel('s')
% ylabel('m/s')

%M2 GHI
% data = xlsread('GHI_TV.xlsx', '082120-082220');
% data = xlsread('GHI.xlsx', 'constant');
% figure(3)
% GHI = data(:,2);
% plot(data(:,1), GHI)
% legend('GHI')
% xlabel('m')
% ylabel('m/s')
