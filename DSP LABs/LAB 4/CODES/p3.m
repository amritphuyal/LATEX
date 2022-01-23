sos = [0.0007378, 2*0.0007378, 0.0007378, 1,-1.2686,0.7051;1,2,1,1,-1.0106,0.3583;1,2,1,1,-0.9044,0.2155];
[z,p,k] = sos2zp(sos);
figure,zplane(z,p);
title('Poles and Zeros from Cascaded Section')


[b,a] = sos2tf(sos);
[z,p,k] = tf2zp(b,a);
figure,zplane(b,a);
title('Transfer Function,Poles and Zeros from Cascaded Section')
