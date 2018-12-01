%% aula 1.6 Curso MATLAB
p = [1 4 5 2];
q = [4 0 6 0 8];
mult_pq = conv(p, q);

x = linspace(0,2*pi, 100);
y = sin(x);
fitPol = polyfit(x,y,8);
x2 = linspace(0,2*pi);
y2 = polyval(fitPol, x2);
plot(x,y, 'LineWidth', 2)
hold on
plot(x2, y2, 'o')

%% sistemas

