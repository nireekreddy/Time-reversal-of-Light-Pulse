clc; clear all;
global v n delx Tp
c=3; n0=2; v=c/n0;  % in scale of 10^(8) m/s
Tp=0.1;
xi=-2; xf=2; % in microns
n=1500;
delx=(xf-xi)/n;
xvec=linspace(xi,xf,n);
y0=exp(-(xvec/(v*Tp)).^2);%+exp(-((xvec-0.2)/(v*Tp*0.5)).^2);
tf=0.4; % set  final time
tspan=0:0.001:tf; % in 10^(-14) s
[t c] = ode45('kappa0',tspan,y0);
q=size(t);
E=c(q,:);
plot(xvec,abs(E),'r',xvec,y0,'b', 'Linewidth',2)
xlabel('Distance in [\mu m] ')
legend('pulse at t=tf')
axis tight

