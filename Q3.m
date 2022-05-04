clc;
clear all;
close all;


fs=8000;
f1=1000;

t=1:128;
n=(1/fs)*(t);


x1 = sin(2*pi*f1*n);

N=length(x1);
k1=(8000/length(x1))*(0:length(x1)-1);

figure;

plot(t,x1)
xlabel('time index n');
ylabel('amplitude');
title(' input sinusoidal signal x(n) with frequency 1Khz');


y1=fft(x1,N);

figure;
subplot(2,1,1)
plot(abs(y1))
ylim([0 80])
xlabel('frequency (Hz)  ');
ylabel('amplitude');
title(' magnitude spectrum with x(n) before normalization');
subplot(2,1,2)
plot(k1,abs(y1))
ylim([0 80])
xlabel('frequency (Hz)  ');
ylabel('amplitude');
title(' magnitude spectrum with x(n) after normalization');

%---resolutio--
m=fs/N;
name="frequency resolution= " + num2str(m) + " Hz";
disp(name);
