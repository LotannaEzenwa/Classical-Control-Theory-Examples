x = tf('s');

G = (2.01+x)/((x+2)*(x^2+4*x+25));
H = 1/((x^2+4*x+25));
step(G)
hold on
step(H)
step((G-H))
legend('G','Approx.','Error')