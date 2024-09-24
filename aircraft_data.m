%% Atmosphere ISA
h0      = 0;
h_trop  = 11000;
h_strat = 20000;
P0      = 101325;
rho0    = 1.225;
g0      = 9.80665;
gamma   = 1.4;
Th      = -0.0065;
R       = 287.0531;
T0      = 288.15;

%% Parametres geometriques/massiques

chord    = 4.29;
wingspan = 34.10;
wingarea = 122.6;
mass     = 57837.5;
Ixx      = 1278371.16;
Iyy      = 3781272.53;
Izz      = 4877656.08;
Ixz      = 13558.19;
Ib       = [ Ixx 0   -Ixz
             0   Iyy  0
            -Ixz 0    Izz];
CG       = [0 0 0]';
xm       = -0.5;
ym       = 5.755;
zm       = 0.5;
REngLoc  = [xm  ym zm]';
LEngLoc  = [xm -ym zm]';
em       = 1*pi/180;
am       = 0;
       
%% Coefficients aerodynamiques
% CD
CD_0          = 0.02;
CD_2          = 0.0335;
% CY
CY_beta       = -1.42;
CY_p          = 0.0;
CY_r          = 0.0;
CY_da         = 0.0;
CY_dr         = 0.05;
% CL
CL_0          = 0.11;
CL_alpha      = 5.5;
CL_q          = 3.3;
CL_alphadot   = 2.7;
CL_de         = 0.32;
CL_dths       = -0.32;
% Cl
Cl_beta       = -0.03;
Cl_p          = -0.5;
Cl_r_0        = 0.15;
Cl_r_alpha    = 0.035;
Cl_da         = -0.07;
Cl_dr         = 0.02;
% Cm
Cm_0          = 0.02;
Cm_alpha      = -1.5;
Cm_q          = -12;
Cm_alphadot   = -12;
Cm_de         = -1.2;
Cm_dths       = 1.2;
% Cn
Cn_beta_0     = 0.2;
Cn_beta_alpha = -0.0195;
Cn_p_0        = -0.025;
Cn_p_alpha    = -0.035;
Cn_r          = -0.18;
Cn_da         = -0.03;
Cn_dr         = -0.09;

