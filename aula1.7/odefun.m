function dot_Y = odefun(t,theta)
I = 0.2147;
m = 1.0064;
L = 0.8;
T = 2.8;
g = 9.8;

    dot_Y(1) = theta(2);
    dot_Y(2) = (T-m*g*L/2*cos(theta(1)))/I;
end