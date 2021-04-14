clear;
% openloop: 1/(L*s^2 + R*s + (1/C))
L = 5;
C = 300e-6; 
R = 100;



s = tf('s');
G = 1/(L*s^2 + R*s + (1/C));

tiledlayout(3,1)
nexttile
[y,t] = step(G);
plot(t,y)
title('Step')
nexttile
[y,t] = step(G/s);
plot(t,y)
title('Ramp')
nexttile
[y,t] = impulse(G);
plot(t,y)
title('Impulse')

stepinfo(G)