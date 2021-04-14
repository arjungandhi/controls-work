clear;
%system 1 
s = tf('s');
G1 =5*1/(s*(5*s+1));
G1 = G1/(1+G1);
%system 2
G2 =5*(1 + 0.8*s)*1/(s*(5*s+1));
G2 = G2/(1+G2);
%system 3
G3 = 5* (1/(5*s+1));
G3 = G3/(1+.8*G3);
G3 = G3/s;
G3 = G3/(1+G3);

tiledlayout(3,1);
nexttile;
[y,t] = step(G1,55);
plot(t,y)
title('Step')
hold on;
[y,t] = step(G2,55);
plot(t,y)
[y,t] = step(G3,55);
plot(t,y)
legend('sys 1','sys 2', 'sys 3')
hold off;


nexttile;
[y,t] = step(G1/s,900);
plot(t,y)
title('Ramp')
hold on;
[y,t] = step(G2/s,900);
plot(t,y)
[y,t] = step(G3/s,900);
plot(t,y)
legend('sys 1','sys 2', 'sys 3')
hold off;


nexttile;
[y,t] = impulse(G1,55);
plot(t,y)
title('Impulse')
hold on;
[y,t] = impulse(G2,55);
plot(t,y)
[y,t] = impulse(G3,55);
plot(t,y)
legend('sys 1','sys 2', 'sys 3')
hold off;