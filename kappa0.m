function Edot = kappa0(t,E)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
global v n delx Tp
Edot=zeros(n,1);
Edot(1)=-(v/delx)*(E(2)-E(n))/2;
for ll = 2:n-1
Edot(ll) = -(v/delx)*(E(ll+1)-E(ll-1))/2;
end
Edot(n)   = -(v/delx)*(E(1)-E(n-1))/2;
end

