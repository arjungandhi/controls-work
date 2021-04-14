clear;
close all;



s = tf('s');
G1 = (1+s)/(1 + 2*s); %Open loop
G2 = (1-s)/(1 + 2*s); %Open loop


bodeplot(G1,G2)
legend('G1','G2')