s = tf('s');
K = 1;
G = 1/((s+1)*(s+2));
H = K/s;
nyquist(G*H);
title('HW73')
print('HW73','-bestfit','-dpdf')