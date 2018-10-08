clear
K = 1;
s = tf('s');
GH = K/(s*(s+2)*(s^2+4*s+6));
polevar = zeros(size(zero(1/GH)));

for x=0:5
    polevar(:,x+1) = zero(1/(GH)+x^4);
end
rlocus(GH)