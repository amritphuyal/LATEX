function Amrit_prasad_LAB1_bode_func(n,d)
H=tf(n,d);
options = bodeoptions;
options.FreqUnits = 'Hz';  % or 'rad/second', 'rpm', etc.
bode(H,options,'.-');                    
grid on;
end

