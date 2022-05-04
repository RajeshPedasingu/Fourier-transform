clc;
clear all;
close all;



x =[1 -1 2 0.5 0 -1 2 1];
N=length(x);
n=0:N-1;

x1=x(mod(-n,N)+1);


figure;
subplot(2,1,1)
stem(n,x)
title('given sequence x(n)')
xlabel('time(n)')
ylabel('amplitude')

subplot(2,1,2)
stem(n,x1)
title('reversal of the signal, x(-n)')
xlabel('time(n)')
ylabel('amplitude')

xe=(x+x1)/2;
y1=fft(xe);
y2=real(fft(x));

figure;
subplot(2,1,1)
stem(n,y1)
title('fourier transform of EVEN part of x(n)')
xlabel('frequency (k-axis)')
ylabel('amplitude')
subplot(2,1,2)
stem(n,y2)
title('real part of fourier transform of  x(n)')
xlabel('frequency (k-axis)')
ylabel('amplitude')


%----odd part---

xo=(x-x1)/2;
y3=fft(xo);
y4=j*imag(fft(x));

figure;
subplot(2,1,1)
stem(n,abs(y3))
title('fourier transform of ODD part of x(n)')
xlabel('frequency (k-axis)')
ylabel('amplitude')

subplot(2,1,2)
stem(n,abs(y4))
title('conjugate  of imaginary part  of fourier transform of  x(n)')
xlabel('frequency (k-axis)')
ylabel('amplitude')





