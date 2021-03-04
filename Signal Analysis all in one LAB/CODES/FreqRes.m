num=[0.008,-0.033,0.05,-0.033,0.008]
den=[1,2.37,2.7,1.6,0.4]
w=200
x=freqz(num,den,w)
subplot(2,1,1)
plot(abs(x))
xlabel('\omega')
ylabel('|H(\omega)|')
title('Magnitude Plot of Frequency Response')
subplot(2,1,2)
plot(angle(x))
xlabel('\omega')
ylabel('\angle H(\omega)')
title('Phase Plot of Frequency Response')