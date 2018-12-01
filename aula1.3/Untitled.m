x = linspace (-pi, pi, 700);
y = x.*sin(0.872*pi*sin(x)/x.);
z = -(abs(x)*cos(pi*sin(x)/x.);
plot3(-(abs(x)*cos(pi*sin(x)/x)), x.*sin(0.872*pi*sin(x)/x), x, 'r', 'LineWidth', 3);
grid on
xlabel('Planx', 'fontsize', 16)
ylabel('Plany', 'fontsize', 16)
zlabel('Vertical', 'fontsize', 16)

