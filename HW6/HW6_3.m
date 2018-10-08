s = tf('s');
G = 1/(s^2+6*s+8);
H = 1/s;
polevar = zeros(3,6);

for x=0:5
    polevar(:,x+1) = zero(1/(G*H)+x^4);
end
rlocus(G*H)