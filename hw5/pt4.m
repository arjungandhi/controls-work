clear;
%system 1 
s = tf('s');
G1 =10/(s*(s+2)*(s+4));
G1 = G1/(1+G1);

[y,t] = step(G1);
plot(t,y)
title('Step')

stepinfo(G1)