%% Minicurso Matlab exerc�cio 1.2 %%
clear all
close all
clc

Dado_pai = struct();
Dado_mae = struct();
teste = 1;
while(teste)
    Dado_pai.Nome = input('Nome do pai: ', 's');
    Dado_pai.Idade = input('Idade do pai: ');
    Dado_pai.CPF = input('CPF do pai: ');
    
    Dado_mae.Nome = input('Nome da mae: ', 's');
    Dado_mae.Idade = input('Idade da mae: ');
    Dado_mae.CPF = input('CPF da mae: ');
    if isnan(Dado_mae.CPF)
    else
        teste = 0;
    end
end

%% bebes 
nomes_bbs = {'maria','paula','ana','pedro','carlos','joao','vitor','sidney','bruce','leo'};
x = round(10*rand(1));
nomebb = nomes_bbs(x);
dados_bb = struct('teste', nomebb, 'CPF', ((Dado_pai.CPF)+(Dado_mae.CPF)));

