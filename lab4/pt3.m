clear;
% 𝑚𝑣̇ + 𝑏𝑣 = u
% U(s) = m(V(s)s-v(0)) + bV(s)
% U(s) = V(s)(ms+b) -m(v(0))
% openloop: V(s)/U(s) = 1/(ms+ b)
m = 1500;
b = 50; 
u = 500;



s = tf('s');
G = u/(m*s + b);

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
