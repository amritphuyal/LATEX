b=[0.0018,0.0073,0.011,0.007,0.008];
a=[1,-3.0544,3.8291,-2.2925,0.55072];
[z,p,k]=tf2zp(b,a);

subplot(2,3,1),zplane(z,p),title('Zero pole plot');
[s,g]=tf2sos(b,a);
subplot(2,3,2),zplane(s(1,1:3),s(1,4:6)),title('Zero pole plot of 1st SOS');
subplot(2,3,3),zplane(s(2,1:3),s(2,4:6)),title('Zero pole plot of 2nd SOS');
[h,w]=freqz(b,a);
subplot(2,3,[4,5,6]),plot(w/pi,abs(h)),title('Frequency response');


