del=input('Enter the step size = '); %step size
t=0:2*pi/100:2*pi;
x=2*sin(t); % amplitude of signal is 5
subplot(2,1,1)
plot(x)

hold on
y=[0]; % output binary sequencce
xr=0;
for i=1:length(x)-1
if xr(i)<=x(i)
d=1;
xr(i+1)=xr(i)+del;
else
d=0;
xr(i+1)=xr(i)-del;
end

y=[y d];
end

stairs(xr)
title('Delta Modulation ')
xlabel('Time (t)')
ylabel('Amplitude')
axis( [0 105 -3 3 ] )
subplot(2,1,2)
stairs(y)
title('Bit Output ')
xlabel('Time (t)')
ylabel('Amplitude')
axis( [0 105 0 1.5] )
sgtitle('(PUL074BEX004)');
hold off