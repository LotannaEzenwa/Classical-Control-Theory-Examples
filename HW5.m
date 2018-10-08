x = tf('s');
Ga1 = 10/((x+2)*(x+4)*(x+30));
Ga2 = 10/(240+188*x);
figure(1)
step(Ga1)
hold on
step(Ga2)
legend('Ga1','Ga2')
hold off
grid on
Gb1 = (x+4)/((x+2)*(x^2+4*x+25));
pzplot(Gb1)
clf
Gc1 = (x+25)/((x+2)*(x^2+4*x+25));
pzplot(Gc1)
clf
Gd1 = (x+2.01)/((x+2)*(x^2+4*x+25));
Gd2 = 1/(x^2+4*x+25);
hold on
step(Gd1)
step(Gd2)
legend('Gd1','Gd2')