%% aula 1.6 exercicio 1

m = [0 0.009 0.018 0.027 0.036 0.049 0.058];
d = [0 0.002 0.004 0.0055 0.0085 0.012 0.0135];

m1 = linspace(0,0.054, 7);
y = interp1(m,d,m1, 'linear');
plot(m, d, 'o')
hold on
plot(m1,y, 'b', 'LineWidth', 2)

%% aula 1.6 exercicio 2
t = 0.01:0.01:5.01;
vel = 3.37*exp(-1.5*t).*cos(4.77*t)-1.06*exp(-1.5*t).*sin(4.77*t);
ac = diff(vel)/0.01;
des = cumtrapz(t,vel);
plot(t,vel)
hold on
plot(t, des)
hold on 
plot(t(:,1:length(ac)), ac)
