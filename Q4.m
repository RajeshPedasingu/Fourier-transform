clc;
clear all;
close all;


x=[1 0.5 0 -0.5];
N1=16;
N2=32;

r1=length(x);
p1=zeros(1,N1-r1);
p2=zeros(1,N2-r1);
x1=[x p1];
x2=[x p2];

y1=fft(x1,N1);
y2=fft(x2,N2);


n1=0:length(x1)-1;
n2=0:length(x2)-1;

k1=0:N1-1;
k2=0:N2-1;

%---16 point fft--
figure;
stem(n1,x1)
title('input signal x(n) ')
xlabel('time(n)')
ylabel('amplitude')

figure;
subplot(2,1,1)
stem(k1,abs(y1))
title('magnitude responce of x(n) - (16 points)')
xlabel('frequency(k-axis)')
ylabel('amplitude')



%---32 point fft-----


subplot(2,1,2)
stem(k2,abs(y2))
title('magnitude responce of x(n) - (32 points)')
xlabel('frequency(k-axis)')
ylabel('amplitude')



