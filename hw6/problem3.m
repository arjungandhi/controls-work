clear;
close all;

s = tf('s');
G = 10*(s^2+.4*s+1)/(s*(s^2+.8*s+9)); %Open loop


bode(G)