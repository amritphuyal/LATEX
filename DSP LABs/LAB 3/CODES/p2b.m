a=1;
t=linspace(-5,5,1000);
x=t>=0;
h=x.*exp(-a.*t);
y=conv(x,h,'same');
l=tiledlayout(3,1);
title(l,{'CT convolution using conv function'})
xlabel(l,'t')
ylabel(l,'Amplitude')
nexttile
plot(t,x,'Linewidth',1.5)
ylabel('x(t)')
nexttile
plot(t,h,'Linewidth',1.5)
ylabel('h(t)')
nexttile
plot(t,y,'Linewidth',1.5)
ylabel('y(t)')
