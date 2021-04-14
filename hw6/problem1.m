clear;
close all;

w_list = [.1 1 10 100];

s = tf('s');
G = 10*(s+1)/((s+4)*(s^2+6*s+81)); %Open loop

% my equations
for w = w_list
% my math
a = 10;
b = 10*w;
c = -10*w^2 +324;
d = -w^3 + 105*w;
amplitude = sqrt(a^2 + b^2)/sqrt(c^2 + d^2);

ph = atan(b/a) - atan(d/c);
    
    
% matlab anaylsis
[mag,phase,wout] = bode(G,w);
    
disp("analytical results for w:" + w)
disp("amplitude:"+ amplitude)
disp("phase:"+ ph)
disp("matlab results for w:" + w)
disp("amplitude:"+ mag)
disp("phase:"+ deg2rad(phase))
end

% Results from above code
% analytical results for w:0.1
% amplitude:0.031011
% phase:0.067266
% matlab results for w:0.1
% amplitude:0.031011
% phase:0.067266
% analytical results for w:1
% amplitude:0.042755
% phase:0.46556
% matlab results for w:1
% amplitude:0.042755
% phase:0.46556
% analytical results for w:10
% amplitude:0.14826
% phase:1.545
% matlab results for w:10
% amplitude:0.14826
% phase:-1.5966
% analytical results for w:100
% amplitude:0.0010056
% phase:0.090395
% matlab results for w:100
% amplitude:0.0010056
% phase:-3.0512


% making bode plots
bode(G)