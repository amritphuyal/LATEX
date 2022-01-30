b = [1, 0.1];
a = [1, 0.2, 9.01];
Ts = [0.1 0.5];
fs = 1./Ts;
[Ha, wa] = freqs(b,a,512);
figure(1)
for i = 1:2
subplot(1,2,i)
plot(wa/pi, 20*log10(abs(Ha)));
hold on;
[bz, az] = bilinear(b,a,fs(i));
[Hz, wz] = freqz(bz,az,512);
plot(wz/pi, 20*log10(abs(Hz)),'r')
xlabel('Normalized Frequency(* pi rad/sample)'),
ylabel('Magnitude(dB)');
title(['Magnitude response for Ts = ', num2str(Ts(i))]);
legend('Analog filter','Digital filter');
end
figure(2)
for i = 1:2
subplot(1,2,i)
impulse(b,a,'r--');
%impulse response of analog filter
hold on;
[bz, az] = bilinear(b,a,fs(i));
dimpulse(bz,az);
%impulse response of digital filter
title(['Impulse response comparison for Ts = ', num2str(Ts(i))]);
legend('Analog filter','Digital filter');
end