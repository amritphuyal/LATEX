fs = 8000;
fn = fs/2;

wp = 1200/fn;
ws = 2000/fn;
rp = 0.5;
rs = 40;
[N,Wc] = buttord(wp,ws,rp,rs);

[b1,a1] = butter(N,Wc);
freqz(b1,a1);
subplot(2,1,1);
title("Frequency response of the designed Butterworth Filter")
fprintf("Order of Butterworth filter: %d\n", N);
disp("Cutoff frequencies:");
disp(Wc);
disp("Numerator coefficients of Butterworth Filter: ");
disp(b1);
disp("Denominator coefficients of Butterworth Filter: : ");
disp(a1);


figure(2);
[N,Wc] = cheb1ord(wp,ws,rp,rs);

[b1,a1] = cheby1(N,rp,wp);
freqz(b1,a1);
subplot(2,1,1);

title("Frequency response of the designed Chebyshev-1 Filter")

fprintf("Order of Chebyshev 1 filter: %d\n", N);
disp("Cutoff frequencies:");
disp(Wc);
disp("Numerator coefficients of Chebyshev-1 Filter: ");
disp(b1);
disp("Denominator coefficients of Chebyshev-1 Filter: ");
disp(a1);

figure(3);
[N,Wc] = cheb2ord(wp,ws,rp,rs);

[b1,a1] = cheby2(N,rs,ws);
freqz(b1,a1);
subplot(2,1,1);

title("Frequency response of the designed Chebyshev-2 Filter")

fprintf("Order of Chebyshev 2 filter: %d\n", N);
disp("Cutoff frequencies:");
disp(Wc);
disp("Numerator coefficients of Chebyshev-2 Filter: ");
disp(b1);
disp("Denominator coefficients of Chebyshev-2 Filter: ");
disp(a1);

figure(4);
[N,Wc] = ellipord(wp,ws,rp,rs);

[b1,a1] = ellip(N,rp,rs,wp);
freqz(b1,a1);
subplot(2,1,1);

title("Frequency response of the designed Elliptic Filter")

fprintf("Order of Elliptic Filter: %d\n", N);
disp("Cutoff frequencies:");
disp(Wc);
disp("Numerator coefficients of Elliptic Filter: ");
disp(b1);
disp("Denominator coefficients of Elliptic Filter: ");
disp(a1);