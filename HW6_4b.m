clear
K=1;
s = tf('s');
GH = K*s*(s+3)/(s^2+2*s+2);
polevar = zeros(size(zero(1/GH)));

for x=0:5
    polevar(:,x+1) = zero(1/(GH)+x^4);
end
rlocus(GH)