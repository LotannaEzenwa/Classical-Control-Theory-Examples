%clear
s = tf('s');
K3 = 7400;
Gc = 1;
Ka = 1;
T = 0.22*K3/(.0001947*s^3 + 0.05413*s^2 + 0.05297*s - 223.2);
%rlocus(T);
R = 2;
C = 2.2*10^-3;
L = 47000*10^-6;
w = (L*C)^-(.5);
X = R/(2*L);
z = X + 1j*w;

sisotool(T)

