t=-10:0.01:10
n=-10:10
c = input('Enter the value of c: ')
a= input('Enter the value of a: ')
y=c*exp(a*t)
z=c*exp(a*n)
subplot(2,1,1)
plot(t,y)
xlabel('t')
ylabel('y(t)')
title('Continuous Exponential Signal ')
subplot(2,1,2)
stem(n,z)
xlabel('n')
ylabel('y[n]')
title('Discrete Exponential Signal ')