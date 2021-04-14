% Adding Identiy Matrixes and Multipying by Vector
I = eye(3);
v = [1;2;3];

result = (I + I) * v;
disp('matrix math')
disp(result)

%plotting y=sin t from [0,10]
fplot(@(t) sin(t),[0,10])
title('y=sin(t)');
xlabel('time (seconds)')
ylabel('y');

%finding roots 
s=tf('s');
r= zero(s^4+3*s^3-15*s^2-2*s+9);
disp('roots')
disp(r)