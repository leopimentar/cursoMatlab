%% Aula 1.7 curso MATLAB - Scripts do will
y0 = 1; % Valor inicial
dydt = @(t) exp(-0.5*t)*sin(10*t)+1; % Equação diferencial
% Vetor de tempos
h = 0.5; % passo
t = 0:h:10;
ta = 0:0.001:10;
% Solução analítica
ya = -0.00499*exp(-0.5*t).*sin(10*t) - 0.0998*exp(-0.5*t).*cos(10*t)+0+t;
% Solução numérica
y = zeros(size(t));
y(1) = y0;
for n = 2:length(y)
    y(n) = y(n-1) + h*dydt(t(n));
end

figure;
plot(t,y,'b-o');hold on;plot(ta,ya,'r');
xlabel('t');ylabel('y(t)');
legend('Euler','Solução exata');grid on

%% Aula 1.7
% Identificação das variáveis
clear clc
h = 0.01;
t = 0:h:10;
R = 100000;
C = 2*10^-5;
eo0 = 0;
ei = 5;
eo = zeros(size(t));
eo(1) = eo0;

% função


for n = 2:length(eo)
    eo(n) = (eo(n-1) + h*(ei/2))/(1+h/2);
end

figure;
plot(t,eo,'b-o');
xlabel('t');
ylabel('e_0 (t)');
legend('Euler');
grid on

