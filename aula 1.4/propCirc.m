function[c, a] = propCirc(r)
    c = 2*pi*r;
    a = pi*r^2
    viscircles([0 0], r);
    ylabel('vertical', 'FontSize', 20);
    xlabel('horizontal', 'FontSize', 20);

end