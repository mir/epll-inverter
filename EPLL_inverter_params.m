% Circuit parameters
E = 400; % AC and DC voltages (V)
R = 1; % Load resistance (Ohm)  
L = 5e-3; % Load inductance (H)

omega_ref = 65;  % Frequency of AC source (Hz)
omega_vco_free = 50;  % Default frequency for inverter (Hz)


% PLL Parameters
mu_1= 200;   % (p.18, EPLL book by Karimi-Gh.)
mu_2 = 20000; % (p.19, EPLL book by Karimi-Gh.)
mu_3 = 400;% (p.19, EPLL book by Karimi-Gh.)
U_i = 1;  % (p.19, EPLL book by Karimi-Gh.)

u = U_i;
K_vco = 1;
mu = mu_1;
tau_1 = 1/mu_2;
tau_2 = mu_3/mu_2;
theta_0 = 0;


