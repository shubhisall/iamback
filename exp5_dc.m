clc; close all; clear all;
pn=1000;
pt=1/pn;
b=[1 0 1 1 0 1 0 0 1 0];
t=0:pt:10-pt;
ms=[];
for jk=1:length(b)
    ms=[ms repmat(b(jk),1, pn)];
end
ac=4; fc=5; fh=fc+4; fl=fc-4;
cs=ac*sin(2*pi*fc*t);
cs1=ac*sin(2*pi*fh*t);
cs2=ac*sin(2*pi*fl*t);
st=ms.*cs1+not(ms).*cs2;
na=2;
ns=na*[rand(1,length(t))-0.5];
stn=st+ns;
rs=stn.*cs1-stn.*cs2;
ss=[];
for jk=1:length(b)
    ss=[ss sum(rs(1,(jk-1)*pn+1:jk*pn))];
end
ss=ss/pn;
vt=0;
ds=[];
for jk=1:length(b)
    if ss(jk)>=vt
        ts=1;
    else
        ts=0;
    end
    ds=[ds repmat(ts,1,pn)];
end
subplot(711)
plot(t,ms,'LineWidth',2.5);
subplot(712)
plot(t,cs);
subplot(713)
plot(t,st);
subplot(714)
plot(t,ns);
subplot(715)
plot(t,stn)
subplot(716)
plot(t,rs);
subplot(717)
plot(t,ds,'LineWidth',2.5);
