clc
clear all
close all
pn=50;
pt=1/pn;
t=0:pt:1-pt;
ac=4;
fc=2;
s=ac*sin(2*pi*fc*t);
n=5;
le=power(2,n);
d=2*ac/le;
qdb=-ac+d:d:ac-d;
ql=-ac+d/2:d:ac-d/2;
[qi qs qd]=quantiz(s,qdb,ql);
qsb=de2bi(qi,n,'left-msb');
[r c]=size(qsb);
esb=[];
jk=1;
for pq=1:r;
 for rs=1:c;
 esb(jk)=qsb(pq,rs);
 jk=jk+1;
 end
end
ds=reshape(esb,n,length(esb)/n);
des=bi2de(ds','left-msb');
dm=-ac+d/2+d*des';
n
distortion=qd
subplot(611);
plot(t,s);
grid on;
subplot(612);
stem(t,s);
subplot(613);
stairs(t,qs);
subplot(614);
stairs(esb);
axis([0 length(esb) -.5 1.5])
subplot(615);
plot(t,dm);
grid on;