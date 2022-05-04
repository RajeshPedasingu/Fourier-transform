clc;
close all;
clear all;


clc;
clear all;
close all;


n=-100:100;

%----Q1----------------------------------------
x1 = sin(200*pi*n/8000);
figure;
plot(n,x1);
title('given signal x(n)')
xlabel('time(n)')
ylabel('amplitude')
k1=(8000/length(x1))*(0:length(x1)-1);
y1=(fft(x1));

[xe, xo, m] = evenodd(x1,n);
y2=fft(xe);
y3=fft(xo);


%--fig--
figure;
subplot(2,1,1)
plot(k1,abs(y1))
title('magnitude responce of x(n)')
xlabel('frequency(hz)')
ylabel('amplitude')
subplot(2,1,2)
plot(k1,angle(y1))
title('phase responce of x(n)')
xlabel('frequency(hz)')
ylabel('amplitude')

figure;
subplot(2,2,1)
plot(k1,abs(y2));
title('magnitude responce of even part (fft(xe))')
xlabel('frequency(hz)')
ylabel('amplitude')
subplot(2,2,2)
plot(k1,angle(y2));
title('phase responce of even part(fft(xe))')
xlabel('frequency(hz)')
ylabel('amplitude')

subplot(2,2,3)
plot(k1,abs(y3));
title('magnitude responce of odd part (fft(xo))')
xlabel('frequency(hz)')
ylabel('amplitude')
subplot(2,2,4)
plot(k1,angle(y3));
title('phase responce of odd part(fft(xo))')
xlabel('frequency(hz)')
ylabel('amplitude')

%-----end Q1_a---------------------------------------------





%------------Q1_b---------------------------------------------
x2 = cos(200*pi*n/8000);
figure;
plot(n,x2);
title('given signal x(n)')
xlabel('time(n)')
ylabel('amplitude')
k1=(8000/length(x2))*(0:length(x2)-1);
y1=(fft(x2));

[xe, xo, m] = evenodd(x2,n);
y2=fft(xe);
y3=fft(xo);


%--fig--
figure;
subplot(2,1,1)
plot(k1,abs(y1))
title('magnitude responce of x(n)')
xlabel('frequency(hz)')
ylabel('amplitude')
subplot(2,1,2)
plot(k1,angle(y1))
title('phase responce of x(n)')
xlabel('frequency(hz)')
ylabel('amplitude')

figure;
subplot(2,2,1)
plot(k1,abs(y2));
title('magnitude responce of even part (fft(xe))')
xlabel('frequency(hz)')
ylabel('amplitude')
subplot(2,2,2)
plot(k1,angle(y2));
title('phase responce of even part(fft(xe))')
xlabel('frequency(hz)')
ylabel('amplitude')

subplot(2,2,3)
plot(k1,abs(y3));
title('magnitude responce of odd part (fft(xo))')
xlabel('frequency(hz)')
ylabel('amplitude')
subplot(2,2,4)
plot(k1,angle(y3));
title('phase responce of odd part(fft(xo))')
xlabel('frequency(hz)')
ylabel('amplitude')

%-----end Q1_b---------------------------------------------



%-------Q1_c--------------------
x3 = exp(0.02*n);
figure;
plot(n,x3);
title('given signal x(n)')
xlabel('time(n)')
ylabel('amplitude')
k1=(8000/length(x3))*(0:length(x3)-1);
y1=(fft(x3));

[xe, xo, m] = evenodd(x3,n);
y2=fft(xe);
y3=fft(xo);


%--fig--
figure;
subplot(2,1,1)
plot(k1,abs(y1))
title('magnitude responce of x(n)')
xlabel('frequency(hz)')
ylabel('amplitude')
subplot(2,1,2)
plot(k1,angle(y1))
title('phase responce of x(n)')
xlabel('frequency(hz)')
ylabel('amplitude')

figure;
subplot(2,2,1)
plot(k1,abs(y2));
title('magnitude responce of even part (fft(xe))')
xlabel('frequency(hz)')
ylabel('amplitude')
subplot(2,2,2)
plot(k1,angle(y2));
title('phase responce of even part(fft(xe))')
xlabel('frequency(hz)')
ylabel('amplitude')

subplot(2,2,3)
plot(k1,abs(y3));
title('magnitude responce of odd part (fft(xo))')
xlabel('frequency(hz)')
ylabel('amplitude')
subplot(2,2,4)
plot(k1,angle(y3));
title('phase responce of odd part(fft(xo))')
xlabel('frequency(hz)')
ylabel('amplitude')

%---------Q1_c  end---------------------------











function [xe, xo, m] = evenodd(x,n)
% Real signal decomposition into even and odd parts
% -------------------------------------------------
% [xe, xo, m] = evenodd(x,n)
%

m = -fliplr(n);
m1 = min([m,n]);
m2 = max([m,n]);
m = m1:m2;
nm = n(1)-m(1);
n1 = 1:length(n);
x1 = zeros(1,length(m));
x1(n1+nm) = x;
x = x1;
xe = 0.5*(x + fliplr(x));
xo = 0.5*(x - fliplr(x));
end




%--end--

