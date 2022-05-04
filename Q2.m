clc;
clear all;
close all;


fs=8000;
%frequency resolution fs/N= 1;
N=fs;
t=(0:N-1)*(1/fs);



x1 = 2*cos(2000*pi*t);
k1=(8000/length(x1))*(0:length(x1)-1);
y1=fft(x1);


figure;
subplot(2,1,1)
plot(t,x1)
xlabel('time index n');
ylabel('amplitude');
title(' input signal x(n)');

subplot(2,1,2)
plot(t,x1)
xlim([0 0.005])
xlabel('time index n');
ylabel('amplitude');
title(' input signal x(n) in the interrval [0 0.005] ');

figure;
plot(k1,abs(y1))
ylim([0 9000])
xlabel('frequency (Hz) ');
ylabel('amplitude');
title(' magnitude spectrum with frequency resolution 1Hz');

%------ end----



fs=8000;
%frequency resolution fs/N= 8 hz;
N=fs/8;
t=(0:N-1)*(1/fs);



x1 = 2*cos(2000*pi*t);
k1=(8000/length(x1))*(0:length(x1)-1);
y1=fft(x1);


figure;
subplot(2,1,1)
plot(t,x1)
xlabel('time index n');
ylabel('amplitude');
title(' input signal x(n) when frequency resolution 8hz');

subplot(2,1,2)
plot(t,x1)
xlim([0 0.005])
xlabel('time index n');
ylabel('amplitude');
title(' input signal x(n) in the interrval [0 0.005] ');

figure;
plot(k1,abs(y1))
ylim([0 2000])
xlabel('frequency (Hz)  ');
ylabel('amplitude');
title(' magnitude spectrum with frequency resolution 8Hz');

%------ end----




%-------Q2_c-----


fs=8000;
%frequency resolution fs/N= 8 hz;
N=fs/16;
t=(0:N-1)*(1/fs);



x1 = 2*cos(2000*pi*t);
k1=(8000/length(x1))*(0:length(x1)-1);
y1=fft(x1);


figure;
subplot(2,1,1)
plot(t,x1)
xlabel('time index n');
ylabel('amplitude');
title(' input signal x(n) when frency resolution 16hz');

subplot(2,1,2)
plot(t,x1)
xlim([0 0.005])
xlabel('time index n');
ylabel('amplitude');
title(' input signal x(n) in the interrval [0 0.005] ');

figure;
plot(k1,abs(y1))
ylim([0 1000])
xlabel('frequency (Hz)  ');
ylabel('amplitude');
title(' magnitude spectrum with frequency resolution 8Hz');

%------ end----







