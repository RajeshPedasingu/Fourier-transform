clc;
close all;
clear all;


x=[1 -1 2 0.5 0 -1 2 1];
N=length(x);
n=0:N-1;



%--timeshift---
y=circshift(x,2);


figure;
subplot(2,1,1)
stem(n,x)
title('given signal x(n)')
xlabel('time (n)')
ylabel('amplitude')
xlabel('')
subplot(2,1,2)
stem(n,y)
title('circular shift in time domain in 2 units')
xlabel('time (n)')
ylabel('amplitude')

%--freq shift--

y1=fft(x);
y2=circshift(y1,3);

figure;
subplot(2,1,1)
stem(n,abs(y1))
title('fourier transform (magnitude responce) of x(n)')
xlabel('frequency (k-axis)')
ylabel('amplitude')

subplot(2,1,2)
stem(n,abs(y2))
title('circular shift in frequency domain by 3 samples')
xlabel('frequency (k-axis)')
ylabel('amplitude')



