clear all;
t=0:0.1:20;
f1=0.6;
f2=0.8;
x=sin(2*pi*f1*t)+sin(2*pi*f2*t);

figure(1);
subplot(2,1,1);
plot(t,x);
hold on;
plot([0 20],[0 0],'black');
hold off;

title('Original signal');
xlabel('Time');
ylabel('Amplitude');

subplot(2,1,2);
x_samples = x(1:6:201);
stem(x_samples,'filled');
title('Sampled Signal');
xlabel('n');
ylabel('x_s[n]');
axis([0 20 -2 2]);
sgtitle('(PUL074BEX004)');


figure(2);
x_recon=0;
subplot(2,1,1);
stem(x_samples,'filled');
title('Sampled Signal');
xlabel('n');
ylabel('x_s[n]');

for k=0:length(x_samples)-1
    subplot(2,1,2);
stem(0:length(x_samples)-1,x_samples,'filled');
if k==length(x_samples)-1
title('Reconstruction finished');
else
title('Sample by sample reconstruction');
end
sgtitle('(PUL074BEX004)');
grid on;

l=k:-0.1:-20+k;
x_recon=x_recon+(x_samples(k+1)*sinc(l));
axis([0 20 -2 2]);
hold on;
plot(t,x_samples(k+1)*sinc(l),'r');
plot(t,x_recon,'b');
xlabel('Time, n');
ylabel('Amplitude, x_s[n]');
hold off;
waitforbuttonpress;
end