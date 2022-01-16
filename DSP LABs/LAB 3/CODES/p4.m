t=linspace(-100,100,1000);
x=t>=1;
tau=double(input('Enter value of TAU: '));
Tp=50;
h=2*tau/Tp.*sinc(t.*2*tau/Tp);
y=conv(x,h,'same');
l=tiledlayout(1,1);
title(l,{'Response of LTI system',sprintf('for t=%d',tau)})
nexttile
plot(t,y,'Linewidth', 1.5)
xlabel('x')
ylabel('y(t)')