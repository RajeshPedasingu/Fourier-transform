clc
clear all;
close all;




[y,fs]=audioread('exp5.wav');
y1=y(:,1);
N=length(y1);
t=0:N-1;
figure;
plot(t,y1)




%----finding---

c=0;
m1=0;
j=1;

for i=1:N-1
   
        if y(i)==0
            c=c+1;
             if c==500
                 m1(j)=i;
                 j=j+1;
                
             end
             
        else
            c=0;

    end
end
%----finding end-----

k1=length(m1);
n1=1;
for p=2:k1


y=y1(m1(p-1):m1(p)-1);

[f1, f2]= raj (y,fs,n1);
n1=n1+1;

end



function [f1, f2]= raj (y,fs,n1)

y=y(:,1);
N=length(y);
y1=fft(y);
y2=fftshift(y1);
%--axis--
k=(fs/N)*(0:N-1);
k1=(fs/N)*(-floor(N/2):floor(N/2));
%---

if mod(N,2)==0
k1=(fs/N)*(-floor(N/2):floor(N/2)-1);

end





p=abs(y1);

j=1;
m=1;
for i=2:(length(p)-1)/2
    g(j)=p(i)-p(i-1);
    j=j+1;
    if g(j-1)<0
        c(m)=j-1;
        m=m+1;
    end
end


p1=p(c);
z=sort(p1);

for i=1:length(p1)
    if p1(i)==z(end-1)
        c2=i;
    end
end
c3=c(c2);



[v1 id1]=max(p);



v2=p(c3);
id2=c3;

%final index values

value1=v1;
f1=k(id1);
value2=v2;
f2=k(id2);

%---end---




figure;
plot(y)
title('audio signal ')
xlabel('time')
ylabel('amplitude')
figure;
subplot(2,1,1)
plot(k,abs(y1))


% txt = ['F1(hz)=' num2str(f1) ' , ' 'F2(hz)=' num2str(f2) ];
% text(length(y1)/2,v1-v1/4,txt)
name="dft of dailed number " + num2str(n1);
title(name)
xlabel('frrequency(hz)')
ylabel('amplitude')

subplot(2,1,2)
plot(k1,abs(y2))
title('DFT of dailed number  after frequencies center to zero')
xlabel('frrequency(hz)')
ylabel('amplitude')



end

       




