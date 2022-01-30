b = [1, 0.1];
a = [1, 0.2, 9.01];
Ts = [0.1 0.5];
fs = 1./Ts;
figure(2)
for i = 1:2
subplot(1,2,i)
impulse(b,a,'r');
%impulse response of analog filter
hold on;
[bz, az] = impinvar(b,a,fs(i));
dimpulse(bz,az);
%impulse response of digital filter
title(['Impulse response comparison for Ts = ', num2str(Ts(i))]);

legend('Analog filter','Digital filter');
end