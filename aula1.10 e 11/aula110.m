%% Curso MATLAB aula 1.10
% Fun��o objetivo
f = [20 64];
A = [-25 -70];
b = -2100; % inequalidades
Aeq = [];beq = []; % igualdades
LB = [0;0]; % limite inferior
UB = [70;50]; % limite superior
X = linprog(f,A,b,Aeq,beq,LB,UB);
% X cont�m as solu��es x1 e x2

%% Exercicio 1
f = [0.5 2 2];
A = [5 10 7];
b = 230; % inequalidades
Aeq = [1 1 1];
beq = [40]; % igualdades
LB = [-10;-10;-10]; % limite inferior
UB = [90;90;90]; % limite superior
X = linprog(f,A,b,Aeq,beq,LB,UB);

%% Exerc�cio 2
f = [7 8];
A = [10 80];
b = 5000; % inequalidades
Aeq = [1 1];beq = [90]; % igualdades
LB = [5;5]; % limite inferior
UB = [90;90]; % limite superior
X = linprog(f,A,b,Aeq,beq,LB,UB);

%% Exerc�cio 3
% Fun��o objetivo
fun = @(x)100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
% Op��es - display por itera��o e plot da FObj
options = optimset('Display','iter','PlotFcns',@optimplotfval);
x0 = [0,100]; % Chute inicial
x = fminsearch(fun,x0,options);

