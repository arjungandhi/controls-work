clear;
% 𝐹(𝑡) = 𝑚𝑥̈  + 𝑏𝑥̇ + 𝑘𝑥
% F(s) = m(X(s)s^2-sx(0)-x'(0)) + b(X(s)s-x(0))+kX(s)
% F(s) = X(s)(ms^2+bs+k) -sm(x(0)) - m(x'(0)) -b(x(0))
% openloop: X(s)/F(s) = 1/ms^2 + bs +k
m = 5;
k = 1;
b = .5; 
F = 2;



s = tf('s');
G = F/(m*s^2 + b*s + k);

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
