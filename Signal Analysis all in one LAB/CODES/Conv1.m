x=[1,3,2,1,1]
h=[1,2,-1,1]
y=conv(x,h)
subplot(3,1,1)
stem(x)
xlabel('n')
ylabel('x[n]')
title('Input Signal x[n]')
subplot(3,1,2)
stem(h)
xlabel('n')
ylabel('h[n]')
title('Impulse Response Signal h[n]')
subplot(3,1,3)
stem(y)
xlabel('n')
ylabel('y[n]')
title('Output Signal y[n]')