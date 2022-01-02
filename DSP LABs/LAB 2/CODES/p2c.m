r=input('Enter acceptable value any for r::  ');
t=-5:0.01:5;
C=1;
w=pi;
theta=pi;
y=exponential_response_polar(C,r,w,theta,t);
l=tiledlayout(2,1);
title(l,{sprintf('Plot for CT exponential function with r=%d',r)})
nexttile
plot(t,real(y),'Linewidth',1.5)
title('Real part')
ylabel('Real [x(t)]')
xlabel('t','interpreter','latex')
nexttile
plot(t,imag(y),'Linewidth',1.5)
title('Imaginary part')
ylabel('Imag [x(t)]')
xlabel('t','interpreter','latex')

function y = exponential_response_polar(C,r,w,theta,t)
    y = abs(C).* exp(r .* t).*(cos(w.*t+theta)+1i.*sin(w.*t+theta));
end