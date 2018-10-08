s = tf('s');
Kp = 1;
Ki = 10;
Kd = 1;
Kg = 0;
w0n2 = Ki/Kd;
twozw0n = Kp/Kd;
G = (Kg/(s^2+twozw0n*s+w0n2));
step(G)