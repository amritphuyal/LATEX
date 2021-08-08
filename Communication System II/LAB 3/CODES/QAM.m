M = 4;    % M number of symbols
N = 10;   % No. sybmols to generate
x = randi( M, N, 1 )-1;  % Generate random combination of symbols as the message signal
s = qammod( x, M);      % Produce I and Q compnents of the QAM modulated message signal

Tb = 0.2;    % Bit time of 0.2 seconds
duration = Tb * length(s);
sampling_period = 0.001;
Tvec = [];
modulated_signal = [];
message_signal = [];
time = 0.0;
fc = 10;
for i = 1:length(s)
  t = time + (0:sampling_period:Tb);
  msig  = real(s(i))*cos(2*pi*fc*t) - imag(s(i))*sin(2*pi*fc*t);
  modulated_signal = [modulated_signal msig];

  m = ones(1,length(t)) .* x(i);
  message_signal = [message_signal m];

  Tvec = [Tvec t];
  time = time + Tb;
end

% Generate base carrier wave
carrier = cos( 2 * pi *fc * Tvec);

subplot(3,1,1)
plot(Tvec,message_signal)
xlim([0 duration])
ylim([0 M])
xlabel('Time (seconds)')
ylabel('Symbol')
title('Digial message signal')
subplot(3,1,2)
plot(Tvec,carrier)
xlim([0 duration])
ylim([-1.2 1.2])
xlabel('Time (seconds)')
ylabel('Amplitude')
title('Carrier signal')
subplot(3,1,3)
plot(Tvec,modulated_signal)
xlim([0 duration])
ylim([-1.5 1.5])
xlabel('Time (seconds)')
ylabel('Amplitude')
title('Modulated signal')
sgtitle('(PUL074BEX004)');
