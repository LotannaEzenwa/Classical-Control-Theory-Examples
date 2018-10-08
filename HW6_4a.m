clear
K = 1;
s = tf('s');
GH = K*(s+40)/(s*(s+15));
polevar = zeros(size(zero(1/GH)));

for x=0:5
    polevar(:,x+1) = zero(1/(GH)+x^4);
end
rlocus(GH)