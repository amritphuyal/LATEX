t=-10:0.01:10
n=-10:10
a = input('Enter the value of a: ')
y=a*t
z=a*n
subplot(2,1,1)
stem(n,z)
xlabel('n')
ylabel('r[n]')
title('Discrete')
subplot(2,1,2)
plot(t,y)
xlabel('t')
ylabel('r(t)')
title('Continuous')
