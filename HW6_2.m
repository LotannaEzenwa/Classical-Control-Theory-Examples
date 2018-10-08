clear
K = 1;
s = tf('s');
G = 20*(s+1)/((s^2+2*s+2)*(s^2+20*s+200));
H = (s+1)/(10*(s^2+2*s+2));
Y = 1/(10*(s^2+2*s+2));
clf
step(G)
hold on
step(H)
step(Y)
legend('G','H','Y');