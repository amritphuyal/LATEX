
%Initializing componenets
R = 1e3;     L = 1e-3;   C = 0.1e-6;     R1 = 1e3;
C1 = 0.01e-6;    R2 = 10e3;     C2 = 0.1e-6;

%%%%%%%%%%%%%%% Figure D Inductor variation

subplot(1,5,1)
inc_dec_func([L*C*0.25 0 1],[L*C*0.25 R*C 1]);
title('Decreased to 25%');
subplot(1,5,2)
inc_dec_func([L*C*0.75 0 1],[L*C*0.75 R*C 1]);
title('Decreased to 75%');
subplot(1,5,3)
inc_dec_func([L*C 0 1],[L*C R*C 1]);
title('Orginal');
subplot(1,5,4)
inc_dec_func([L*C*1.25 0 1],[L*C*1.25 R*C 1]);
title('Increase to 125%');
subplot(1,5,5)
inc_dec_func([L*C*1.75 0 1],[L*C*1.75 R*C 1]);
title('Increase to 175%');