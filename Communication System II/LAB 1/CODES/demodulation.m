 fm =100;
 fc =1000;
 fs =10000;
 t =0:(1/ fs ) :((4/ fm ) -(1/ fs ) ) ;
 x =cos (2* pi* fm * t ) ;
 y = modulate (x , fc , fs , 'amdsb -sc ') ;
 z = demod (y , fc , fs ,'amdsb -sc ') ;
 % Plot
 subplot (3 ,1 ,1)
 plot (t , x ) ;
 title ('Message signal ') ;
 xlabel ('Time (s)') ;
 ylabel ('Amplitude ') ;
 subplot (3 ,1 ,2)
 plot (t , y ) ;
 title ('Modulated signal ') ;
 xlabel ('Time (s)') ;
 ylabel ('Amplitude ') ;
 subplot (3 ,1 ,3)
 plot (t , z ) ;
 title (' Demodulated signal ') ;
 xlabel ('Time (s)') ;
 ylabel ('Amplitude ') ;
 sgtitle ('( PUL074BEX004 ) Demodulation ')