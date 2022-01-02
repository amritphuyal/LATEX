n=-5:5;
t=-5:0.01:5;
y=unit_response(t);
z=unit_response(n);
l=tiledlayout(2,1);
title(l,{sprintf('%s',['Plot for Unit Step function'])})
nexttile
plot(t,y,'LineWidth',1.5)
xlabel('t','interpreter','latex')
ylabel('y(t)','interpreter','latex')
title('Continuous Time Function')
nexttile
stem(n,z,'Linewidth', 1.5)
xlabel('n','interpreter','latex')
ylabel('y[n]','interpreter','latex')
title('Discrete Time Function')

function y = unit_response(x)
    y = x>=0; 
end