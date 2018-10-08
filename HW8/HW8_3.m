clear
s = tf('s');
G = 1/(s^2+.4*s+100);
my_bode(G);
figure
bode(G)