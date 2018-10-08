
clear
clf
page = 'HW7b';
x = linspace(0,5,10000);
s = tf('s');

k = 1;
G = k./((1i*x).^3+(1i*x).^2+(1i*x).*2+1);
H = 1/((s^3 + (s^2) + 2*s + 1));
figure(1)
clf
plot(real(G),imag(G));
hold on
plot(real(G),-imag(G));
grid on
man = strcat(page,' Manual');
title(man);
print(man,'-bestfit','-dpdf')
figure(2)
clf
nyq = strcat(page,' Nyquist');
nyquist(H*k)
title(nyq);
print(nyq,'-bestfit','-dpdf')
figure(3)
clf
T = feedback(H,k);
feed = strcat(page,' CLStepResponse');
step(T)
print(feed,'-bestfit','-dpdf')
pole(T)
