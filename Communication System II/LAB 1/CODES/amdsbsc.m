fm=100;
fc=1000;
fs=10000;
t=0:(1/fs):((4/fm)-(1/fs));
x=cos(2*pi*fm*t);
y=modulate(x, fc, fs, 'amdsb-sc');
z=abs(fft(y,1024));
f= (-511*fs/1024):(fs/1024):(512*fs/1024);
%Plot
subplot(2,2,[1 2]);
plot(t,x);
title('Message signal');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(2,2,3);
plot(t,y);
title('Modulated signal','Time Domain');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(2,2,4);
plot(f,z);
title('Modulated signal','Frequency Domain');
xlabel('Frequency (Hz)');
ylabel('Spectrum amplitude');
sgtitle('(PUL074BEX004) AMDSB-SC')