clear
s = tf('s');
G = 1/(s*(s+1)^2);
bode(G);
clf
margin(G)