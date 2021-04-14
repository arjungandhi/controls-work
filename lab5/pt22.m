clear;
close all;
% 𝑚𝑣̇ + 𝑏𝑣 = u
% U(s) = m(V(s)s-v(0)) + bV(s)
% U(s) = V(s)(ms+b) -m(v(0))
% openloop: V(s)/U(s) = 1/(ms+ b)
m = 1500;
b = 50; 
u = 10;


s = tf('s');
G = u/(m*s + b); %Open loop


pidTuner(G,'pid')

C = pid(196,52.4);
% rise_time = 1.21
% settling_time = 9.1
% Overshoot = 9.95%

% a rise time < 1.5
% seconds, settling time < 10 seconds, 
% Overshoot < 10%, 0<Kp<250, 0<Ki<100, 0<Kd<150