%% Lotanna Ezenwa
% Homework 3
% Due Friday, October 6, 2016

s = tf('s');
G1 = -1/(s^2 - 100^2/(s^2+100) + 5*s + 200);
G2 = -100/(s^2 + 100)*G1;
impulse(G1,'r',G2,'y--');
grid
legend('G1','G2');

dt = .0125;
t = 0:dt:10;
t0 = 0;
u = ones(size(t));
lsim(100*G1,u,t);
figure(3)
lsim(100*G2,u,t);