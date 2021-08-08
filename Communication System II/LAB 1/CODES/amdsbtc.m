fm=100;
fc=1000;
fs=10000;
t=0:(1/fs):((4/fm)-(1/fs));
x=cos(2*pi*fm*t);
y_u=modulate(x, fc, fs, 'amdsb-tc', -1/0.5);
y_n=modulate(x, fc, fs, 'amdsb-tc', -1/1);
y_o=modulate(x, fc, fs, 'amdsb-tc', -1/2);
%Plot
subplot(2,3,[1 2 3]);
plot(t,x);
title('Message signal');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(2,3,4)
plot(t,y_u);
title('Under modulated signal','m<1');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(2,3,5)
plot(t,y_n);
title('Normal modulated signal','m=1');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(2,3,6)
plot(t,y_o);
title('Over modulated signal','m>1');
xlabel('Time (s)');
ylabel('Amplitude');
sgtitle('(PUL074BEX004) AMDSB-TC')