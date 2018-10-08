x = tf('s');

G = (25+x)/((x+2)*(x^2+4*x+25));
H = (25)/((x+2)*(x^2+4*x+25));
step(G)
hold on
step(H)
step((G-H)/x)
legend('G','Approx.','Error Integral')