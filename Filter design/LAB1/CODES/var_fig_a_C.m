
%Initializing componenets
R = 1e3;     L = 1e-3;   C = 0.1e-6;     R1 = 1e3;
C1 = 0.01e-6;    R2 = 10e3;     C2 = 0.1e-6;


%%%%%FIGURE A Capacitor variation

subplot(1,5,1)
inc_dec_func(1,[t*C*0.25 1]);
title('Decreased to 25%');
subplot(1,5,2)
inc_dec_func(1,[t*C*0.75 1]);
title('Decreased to 75%');
subplot(1,5,3)
inc_dec_func(1,[t*C 1]);
title('Orginal');
subplot(1,5,4)
inc_dec_func(1,[t*C*1.25 1]);
title('Increase to 125%');
subplot(1,5,5)
inc_dec_func(1,[t*C*1.75 1]);
title('Increase to 175%');