clc;
clear all;
close all;


x=[1 0.5 0 -0.5];
N1=24;
r1=length(x);
p1=zeros(1,N1-r1);
x1=[x p1];
y1=fft(x1,N1);

n1=0:length(x1)-1;

k1=0:N1-1;


%---24 point fft--
figure;
stem(n1,x1)
title('input signal x(n)-(24 points) ')
xlabel('time(n)')
ylabel('amplitude')

figure;
subplot(2,1,1)
stem(k1,abs(y1))
title('magnitude responce of x(n) - (24 points)')
xlabel('frequency(k-axis)')
ylabel('amplitude')

subplot(2,1,2)
stem(k1,angle(y1))
title('phase responce of x(n) - (24 points)')
xlabel('frequency(k-axis)')
ylabel('phase')

%---

y2=ifft(y1);

%---ifft--

figure;
subplot(2,1,1)
stem(n1,x1)
title('input signal x(n) ')
xlabel('time(n)')
ylabel('amplitude')

subplot(2,1,2)
stem(n1,y2)
title('inverse fft  ')
xlabel('time(n)')
ylabel('amplitude')



