h = 0.01; % Passo [s]
tfim = 10; % Tempo final [s]
t = 0:h:tfim; % Vetor de tempo [s]
theta0 = [-pi/2 0];

x0 = [1 0]; % Condições iniciais
[t,theta] = ode45(@odefun,t,theta0);

for k = 1:length(t)
    plot(t(1:k),theta(1:k),'b','linewidth',2);hold on;
    plot(t(k),theta(k),'bo','markersize',10);
    %text(50,500,['Tempo =',num2str(t(k))]);
    %xlim([0 500]);ylim([-200 600]);
    grid on;
    drawnow;
    hold off;
end
