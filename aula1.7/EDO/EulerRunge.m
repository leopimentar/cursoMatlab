clc
clear all
a = 0;
b = 1;
m = 10;
h=(b-a)/m;
x0=a;
y0=0.5;

x=a:h:b;
yex= Yex(x); % solução exata
x(1) = x0;

% Método de Euler
ye(1) = y0; % valor inicial
for i = 2:m+1
    ye(i)=ye(i-1) + h.*f(x(i-1),ye(i-1)); 
end

% Metodo de Euler Modificado - Runge-Kuta de segunda ordem
yr(1) = y0; % valor inicial
for i = 2:m+1
   yr(i)=yr(i-1) + h.*f(x(i-1)+h/2,yr(i-1)+(h/2).*f(x(i-1),ye(i-1)));
end;
% 
% % Método de Euler Melhorado
 ym(1) = y0 % valor inicial
for i = 2:m+1
  fi = f(x(i-1),ym(i-1));  
  ym(i)=ym(i-1) + (h/2).*(fi+f(x(i-1)+h,ym(i-1)+h.*fi));
end

plot(x,yex,'b',x,ye,'r',x,yr,'k',x,ym,'g')
