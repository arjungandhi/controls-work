num = 10;
den = [1 2 10];
sys = tf(num,den);
s = tf('s');
step(sys)
step(sys/s)
impulse(sys)
