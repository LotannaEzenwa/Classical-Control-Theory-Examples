clear 
clf
s = tf('s');

H = 1/s;
G = 1/((s+1)*(s+2));
T = G*H;

syms w
q = w^2*(1+2*w^2+w^4)*(16+8*w^2+w^4);
expand(q);
%solve(q)
margin(T)
title('HW74')
print('HW74','-bestfit','-dpdf')