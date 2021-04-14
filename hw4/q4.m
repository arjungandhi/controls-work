s = tf('s');
G = 4/(s*(s+1));
HG = G/(1+G);
step(HG)
stepinfo(HG)