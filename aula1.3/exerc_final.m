clear
close all
clc

y(1:12) = rand(1,12);
y = 1000*y;
x = linspace(1,12,12);
ymax = max(y);

for i=1:12
    if y(i) == ymax
        xmax = i;
    end    
end

figure
subplot(2,2, [1 2])
bar(y)
hold on
bar(ymax, 'r')
title('Grafico de barras')
xlabel('meses')
ylabel('vendas em bilhoes')

subplot(2,2, 3)
destaque(1,12) = zeros;
destaque(xmax) = 1;
pie(y, destaque);
title('grafico de pizza')



subplot(2,2, 4)
stem(x,y, 'r')
hold on
stem(xmax, ymax, 'd', 'b', 'LineWidth', 1.5, 'MarkerSize', 8)
xlim([1 12])
title('Grafico generico \Omega')
xlabel('meses')
ylabel('vendas em milhoes')