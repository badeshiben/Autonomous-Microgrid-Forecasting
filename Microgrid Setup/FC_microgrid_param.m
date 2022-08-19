% System frequency (Hz):
Fnom=60; 
% Specialized Power Systems sample time (s):
% Ts_Power=1/(33*Fnom)/100;
Ts_Power =20e-6;
% Inverter Control system sample time (s):
Ts_Control=10*Ts_Power; 

Ts = Ts_Power;      % Temp fix of SNL wind turbine block

SOC_target = 0.8;
GC_mode = 3;        % max_RPP=1, grid_support=2, PQ_track=3 

Pmax_WT = 618460;
Pmax_PV = 430000;
GHI_rated = 1100;
U_rated = 12;
U_min = 6;
WS = readmatrix('WS_forecast_updated.xlsx','Sheet','increase');
GHI = readmatrix('GHI_forecast.xlsx','Sheet','increase');
BL = readmatrix('Building_Loads_forecast_updated.xlsx','Sheet','increase');
forecast = [WS, GHI(:,2), BL(:,2)];