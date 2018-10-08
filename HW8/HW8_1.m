clear
s = tf('s');
w0 = 10; %rad/sec
G1 = w0/(s+w0);
G2 = s/(s+w0);


w1 = 31; %rad/sec
w2 = 31; %rad/sec

G3 = w1/(s+w1);
G4 = s/(s+w2);

[mag1,p1,m1] = my_bode(G3);
[mag2,p2,m2] = my_bode(G4);
mag3 = mag1 + mag2;
figure
subplot(2,1,1)
semilogx(m1,mag3)
grid on
subplot(2,1,2);
semilogx(m1,p1+p2);
grid on
figure
bode(G3*G4);