clc
clear all
a = 0;
b = 1;
m = 10;
h=(b-a)/m;
x0=a;
y0=1;

x=a:h:b;
yex=(1/4).*(3.*exp(-2.*x)+2.*x+1);% solução exata
x(1) = x0;

% Método de Euler
ye(1) = y0; % valor inicial
for i = 2:m+1
    ye(i)=ye(i-1) + h.*(x(i-1)-2.*ye(i-1)+1);
end

% Metodo de Euler Modificado - Runge-Kuta de segunda ordem
yr(1) = y0 % valor inicial
for i = 2:m+1
    fi = (x(i-1)-2.*yr(i-1)+1)
    fih = ((x(i-1)+h/2)-2.*(yr(i-1)+(h/2).*fi)+1)
    yr(i)=yr(i-1) + h.*fih;
end


% Método de Euler Melhorado
ym(1) = y0
for i = 2:m+1
    fi = (x(i-1)-2.*ym(i-1)+1)
    fih = ((x(i-1)+h)-2.*(ym(i-1)+h.*fi)+1)
    ym(i)=ym(i-1) + (h/2).*(fi+fih);
end
plot(x,yex,'b',x,ye,'r',x,yr,'k',x,ym,'g*')

