function[c, a] = propCirc(r)
    c = 2*pi*r;
    a = pi*r^2
    th = linspace(0, 2*pi, 360);
    x = r*sin(th);
    y = r*cos(th);
    plot(x,y)
    ylabel('vertical', 'FontSize', 20);
    xlabel('horizontal', 'FontSize', 20);

end