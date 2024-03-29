wsample = 100;
wp = 15;
ws = 20;
wpn = 2*wp/wsample;
wsn = 2*ws/wsample;
wn = (wpn + wsn)/2;
Rs = 40;
beta = 0.5842.*(Rs-21)^0.4+0.07886.*(Rs-21);
dw = (wsn - wpn)/2;
M = ((Rs-7.95)./(14.36*dw)) + 1;
N = round(M);
Kaiser_window_length = N
wk = kaiser(N,beta);
bk = fir1(N-1,wn,wk);
[H,w] = freqz(bk,1,512);
subplot(2,1,1);
plot(w/pi,abs(H));
title('Frequency Response of FIR filter using Kaiser Window');
subplot(2,1,2);
plot(w/pi,20*log10(abs(H)));
xlabel('radian frequency');
ylabel('dB');

figure('Name','impulse response');
nk = 0:N-1;
dimpulse(nk,bk);
title('Impulse Response of the FIR filter');