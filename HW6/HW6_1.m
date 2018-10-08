clf
s = tf('s');
G = 12600*(s+1)/((s+3)*(s+10)*(s+60)*(s+70));
%F = balred(G,2);
H = 12600/(60*70)*(s+1)/((s+3)*(s+10));
step(G)
hold on 
%step(F)
step(H)
legend('G','H');
