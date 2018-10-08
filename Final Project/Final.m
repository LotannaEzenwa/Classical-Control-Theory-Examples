clf
s = tf('s');
x = linspace(-20,50,10000);
K = 1;
G = .0418/(.4536*s^2 + 1.334*s^1);
H = .0418./(.4536*(1i*x).^2+1.334*(1i*x));
margin(G)
savefig('Margin');