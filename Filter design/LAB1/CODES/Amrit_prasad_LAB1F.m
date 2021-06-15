%Initializing componenets
R = 1e3;     L = 1e-3;   C = 0.1e-6;     R1 = 1e3;
C1 = 0.01e-6;    R2 = 10e3;     C2 = 0.1e-6;

%Calling Bode polt Function
Amrit_prasad_LAB1_bode_func([R2*C2 0],[R1*R2*C1*C2 R1*C1+R1*C2+R2*C2 1]);

%Title
title('Bode Diagram Amrit Prasad LAB1F');
