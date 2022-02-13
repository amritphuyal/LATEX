f = [0 pi/6 pi/6 pi];
H = [1 1 0 0];
M = 31;
w = 0:pi/30:pi;
subplot(2,2,1);
h = hamming(M);
plot(w/pi,h);
title('31-point symmetric Hamming window');
subplot(2,2,2);
[H1,w] = freqz(h,1,1024);
plot(w/pi,abs(H1));
title('Frequency Response for Hamming window function');
subplot(2,2,3);
B = fir1(M-1,1/6,h); 
[H2,w] = freqz(B,1,1024);
plot(w/pi,abs(H2));
ylabel('Amplitude');
xlabel('Radian Frequency');
title('Frequency Response of FIR filter using Hamming window');
gk = 20*log(abs(H2));
subplot(2,2,4);
plot(w/pi,gk);
ylabel('dB');
xlabel('Radian Frequency');



w = 0:pi/30:pi;
figure(2);
h = hanning(M);
subplot(2,2,1);
plot(w/pi,h);

title('31-point symmetric Hanning window');
subplot(2,2,2);
[H1,w] = freqz(h,1,1024);
plot(w/pi,abs(H1));
title('Frequency Response for Hanning window function');
subplot(2,2,3);
B = fir1(M-1,1/6,h); 
[H2,w] = freqz(B,1,1024);
plot(w/pi,abs(H2));
ylabel('Amplitude');
xlabel('Radian Frequency');
title('Frequency Response of FIR filter using Hanning window');
gk = 20*log(abs(H2));
subplot(2,2,4);
plot(w/pi,gk);
ylabel('dB');
xlabel('Radian Frequency');


w = 0:pi/30:pi;
figure(3);
subplot(2,2,1);
h = blackman(M);
plot(w/pi,h);
title('31-point symmetric Blackman window');
subplot(2,2,2);
[H1,w] = freqz(h,1,1024);
plot(w/pi,abs(H1));
title('Frequency Response for Blackman window function');
subplot(2,2,3);
B = fir1(M-1,1/6,h); 
[H2,w] = freqz(B,1,1024);
plot(w/pi,abs(H2));
ylabel('Amplitude');
xlabel('Radian Frequency');
title('Frequency Response of FIR filter using Blackman window');
gk = 20*log(abs(H2));
subplot(2,2,4);
plot(w/pi,gk);
ylabel('dB');
xlabel('Radian Frequency');



w = 0:pi/30:pi;
figure(4);
subplot(2,2,1);
h = bartlett(M);
plot(w/pi,h);
title('31-point Bartlett window');
subplot(2,2,2);
[H1,w] = freqz(h,1,1024);
plot(w/pi,abs(H1));
title('Frequency Response for Bartlett window function');
subplot(2,2,3);
B = fir1(M-1,1/6,h); 
[H2,w] = freqz(B,1,1024);
plot(w/pi,abs(H2));
ylabel('Amplitude');
xlabel('Radian Frequency');
title('Frequency Response of FIR filter using Bartlett window');
gk = 20*log(abs(H2));
subplot(2,2,4);
plot(w/pi,gk);
ylabel('dB');
xlabel('Radian Frequency');



figure(5);
M = 61;
w = 0:pi/60:pi;
subplot(2,2,1);
h = hamming(M);
plot(w/pi,h);
title('61-point symmetric Hamming window');
subplot(2,2,2);
[H1,w] = freqz(h,1,1024);
plot(w/pi,abs(H1));
title('Frequency Response for Hamming window function');
subplot(2,2,3);
B = fir1(M-1,1/6,h);
[H2,w] = freqz(B,1,1024);
plot(w/pi,abs(H2));
ylabel('Amplitude');

xlabel('Radian Frequency');
title('Frequency Response of FIR filter using Hamming window');
gk = 20*log(abs(H2));
subplot(2,2,4);
plot(w/pi,gk);
ylabel('dB');
xlabel('Radian Frequency');