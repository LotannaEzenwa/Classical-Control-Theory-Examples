%% Lotanna Ezenwa
% Homework 3 # 3
% ENGS 26
% Due Friday, October 6, 2016

syms th s

M = 1;
m = .2;
L = .5;
Kd = -500;
Kp = -200;
g = 9.81;
s = tf('s');
G = ((Kp + s*Kd)/(M*L*s^2 - g*(M+m)))/(1 + (Kp + s*Kd)/(M*L*s^2 - g*(M+m)));
impulse(G)