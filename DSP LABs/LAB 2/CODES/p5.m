figure()
t=-5:0.01:5;
w=pi/6;
n=5;
[fn, y] = harmonic_sum(w,n,t);
l=tiledlayout(2,1);
title(l,{'Plot for sinusoidal harmonics and their sum'})
nexttile
p1=plot(t,fn,'Linewidth',1.5);
title('Sinusoidal Harmonics')
ylabel('Amplitude')
xlabel('t','interpreter','latex')
ax2=nexttile;
p2=plot(t,y,'Linewidth',1.5,'color','blue');
title('Sum of Harmonics')
ylabel('Amplitdue')
xlabel('t','interpreter','latex')
labels = {'1st Harmonic','2nd Harmonic','3rd Harmonic','4th Harmonic','5th Harmonic','Sum of Harmonics'};
legend([p1;p2],labels,'Location','northoutside','Orientation', 'Horizontal','NumColumns',3)

function [fn, y] = harmonic_sum(w,n,t)
  no = 1:n;
  fn = sin(no.'.*w.*t);
  y = sum(fn,1);
end

