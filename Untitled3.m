phi = 2 * pi * 5;           % 1/4 cycle phase offset
x1 = cos(omega1*t + phi);      % sinusoidal signal, amplitude = 1
x2 = cos(2*pi*150*t + phi)/3;  % sinusoidal signal, amplitude = 1/3
x3 = cos(2*pi*250*t + phi)/5;  % sinusoidal signal, amplitude = 1/5
x4 = cos(2*pi*350*t + phi)/7;  % sinusoidal signal, amplitude = 1/7
x5 = cos(2*pi*450*t + phi)/9;  % sinusoidal signal, amplitude = 1/9

xcomplex = x1+x2+x3;  % signal combining

plot(t, xcomplex);
xlabel('Time (seconds)');
ylabel('xcomplex');
title('More Complex Signal');

sound(3*xcomplex, fs);       % play the signal