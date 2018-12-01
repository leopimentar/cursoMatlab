%% Aula 1.12
prompt = {'Campo 1','Campo 2','Campo 3'};
name = 'Caixa de diálogo';
numlin = 1;
defaultanswer = {'0','0','0'};
options.Resize='on';% Permite ajustar tamanho
answer=inputdlg(prompt,name,numlin,defaultanswer,options);

%% Caixa de diálogo
texto = {'Os dias do curso de MATLAB são:','Terça-feira (18:00-20:00)','Quinta-feira (18:00-20:00)'};
titulo = 'MSG';
msgbox(texto,titulo);

%% Exercicio 1
prompt = {'Campo 1','Campo 2','Campo 3', 'Campo 4', 'Campo 5'};
name = 'Insira os números';
numlin = 1;
defaultanswer = {'0','0','0', '0', '0'};
options.Resize='on';% Permite ajustar tamanho
answer=inputdlg(prompt,name,numlin,defaultanswer,options);
ansChar = char(answer);
promptNum = str2num(ansChar);
Max = max(promptNum);

texto = {'O maior número é:', int2str(Max)};
titulo = 'Solução!';
msgbox(texto,titulo);

%% listas
lista = {'Banana','Maçã','Atemóia','Cereja'};
prompt = 'Selecione uma fruta:';
selecao=listdlg('PromptString',prompt,'ListString',lista);

resposta = questdlg('Qual sua cor favorita?', ...
                         'Pergunta', ...
                         'Vermelho', 'Verde', 'Azul', 'Verde');

%% Animações
t = 0:0.1:22;   % Tempo
x = 20*t;       % Coordenada horizontal
y = 100*t-0.5*9.8*t.^2;     % Coordenada vertical

% Animacao
for k = 1:length(t)
    plot(x(1:k),y(1:k),'b','linewidth',2);hold on;
    plot(x(k),y(k),'bo','markersize',10);
    text(50,500,['Tempo =',num2str(t(k))]);
    xlim([0 500]);ylim([-200 600]);
    grid on;
    drawnow;
    hold off;
end


