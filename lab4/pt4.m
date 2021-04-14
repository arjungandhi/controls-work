clear;
J = 3e-6;
b = 3.5e-6;
K = .025;
R = 5;
L = 3e-6;

c1= (L*J/K);
c2 = (L*b+J*R)/K;
c3 = (R*b+K^2)/K;


s = tf('s');
G = 1/(s^2*c1+s*c2+c3);

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
