clear;
s = tf('s');
G1 = 16/(s+.8);
H = 1;
G2 = 1/s;

G3 = G2*G1/(1+H*G1);
G4 = G3/(1+G3)
step(G3)
stepinfo(G3)