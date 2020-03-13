clear;

% Circuit parameters
E = 400; % AC and DC voltages (V)
R = 1; % Load resistance (Ohm)  
L = 5e-3; % Load inductance (H)

t_step = 1e-5;

omega_ref = 50;  % Frequency of AC source (Hz)
omega_vco_free = 56;  % Default frequency for inverter (Hz)


% PLL Parameters
mu_1= 200;   % (p.18, EPLL book by Karimi-Gh.)
% mu_1= 1;   
mu_2 = 20000; % (p.19, EPLL book by Karimi-Gh.)
% mu_2 = 2000;
mu_3 = 400;% (p.19, EPLL book by Karimi-Gh.)
% mu_3 = 40;
U_i = 1;  % (p.19, EPLL book by Karimi-Gh.)

u = U_i;
K_vco = 1;
mu = mu_1;

% Filter parameters F(s) = (s*tau_2 + 1)/s*tau_1
tau_1 = 1/mu_2;    %
tau_2 = mu_3/mu_2; %
A = 0;
B = 1/tau_1;
C = 1;
D = tau_2/tau_1;
% Lock-in estimate
omega_l = sqrt(K_vco/tau_1) ...
          + K_vco/3/tau_1*tau_2 ...
          + (5-6*log(2))/18*(sqrt(K_vco/tau_1))^3*tau_2^2;
omega_l/2/pi % Lock-in in Hz

theta_0 = 0;


