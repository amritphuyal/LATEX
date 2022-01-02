t=-5:0.01:5;
C=-1;
a=-1;
y1=exponential_response_ct(C,a,t);
C=-1;
a=1;
y2=exponential_response_ct(C,a,t);
C=1;
a=-1;
y3=exponential_response_ct(C,a,t);
C=1;
a=1;
y4=exponential_response_ct(C,a,t);
l=tiledlayout(2,2);
title(l,{'Plot for continuous time exponential function'})
nexttile
plot(t,y1,'Linewidth',1.5)
title('For C and a both -ve')
xlabel('t','interpreter','latex')
ylabel('y(t)','interpreter','latex')
nexttile
plot(t,y2,'Linewidth',1.5)
title('For C -ve and a +ve')
xlabel('t','interpreter','latex')
ylabel('y(t)','interpreter','latex')
nexttile
plot(t,y3,'Linewidth',1.5)
title('For C +ve and a -ve')
xlabel('t','interpreter','latex')
ylabel('y(t)','interpreter','latex')
nexttile
plot(t,y4,'Linewidth',1.5)
title('For C and a both +ve')
xlabel('t','interpreter','latex')
ylabel('y(t)','interpreter','latex')


function y = exponential_response_ct(C,a,t)
  y = C .* exp(a.*t);
end

