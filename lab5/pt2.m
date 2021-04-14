clear;
close all;
% 𝑚𝑣̇ + 𝑏𝑣 = u
% U(s) = m(V(s)s-v(0)) + bV(s)
% U(s) = V(s)(ms+b) -m(v(0))
% openloop: V(s)/U(s) = 1/(ms+ b)
m = 1500;
b = 50; 
u = 10;
time_amount = 200; 
time_sample = .1;
kp_list  = [1 5 10];


s = tf('s');
G = u/(m*s + b); %Open loop


for k = kp_list
    
    C = pid(k);
    G1 = feedback(C*G,1);
    
    [y,t] = step(G1,linspace(0,time_amount,time_amount/time_sample));
    plot(t,y, 'DisplayName', string(k))
    hold on;
    stepinfo(G1)
    
end
title('Step Response')
ylabel('position')
xlabel('time')
legend()