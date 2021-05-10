clc
clear all
close all


%% ORBITA HELIOSINCRONA

mu = 398600;                                                               % [km^3/s^2]
J2 = 1.083e-3;
rE = 6378;                                                                 % km
%i = deg2rad(98.5);                                                        % rad
i = deg2rad(98.6);                                                         % rad
e = 0;

% Altura: despejando de desviacion RAAN
Omegap_Sol = 2*pi/( 365.2411984 * 24 * 3600 );                             % rad/s
a = (-( 3*J2*rE^2*cos(i)*sqrt(mu) )/( 2*Omegap_Sol ))^(2/7)
h = a-rE

% Periodo
T = 2*pi*sqrt(a^3/mu)

% velocidad
r = a;
v = sqrt( mu*( 2/r - 1/a ) );


% Eclipse
rho = asin( rE/a );
eclipse = 2*rho;

tsol = (2*pi-eclipse)/(2*pi);


%% POTENCIA MEDIA

Wtel = 0;                                                                 % [W]
Wele = 30;                                                                   % [W]
Want = 3*2;                                                                 % [W]
Wine = 3*3;                                                                % [W]

W = Wtel + Wele + Want + Wine;                                                   % [W]


%% AREA PANEL

f = 0.75;           
eta = 0.25;
G = 1360;                                                                  % [W/m^2]

A = W / ( tsol*G*f*eta )                                                   % [m^2]