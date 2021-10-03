
%% Nome do script: cosh_media_ez.m
% Descrição: Cria um gráfico das funções cosh(z), exp(-z), e exp(z)
% Premissas: Nenhuma
% Autores: aaguiarn, iggorcr
% $Data: 08 de Junho, 2021$
%---------------------------------------------------------

%% Faxina para assegurar a clareza e bom funcionamento do script%%
clear, clc, close all
%clear: remove as variáveis e funções da memória/área de trabalho%
%clc: Limpa o prompt de comando%
%close all: fecha todas as janelas de figuras atualmente abertas%
%%Fim da faxina%%

x = -6:0.25:6; %Define um vetor x de de x0=-6 a xn=6 com 0.25 de intervalo
%entre xn-1 a xn
y1 = cosh(x); %cria a variável y1 (cosseno hiperbolico) para os valores de x%
y2 = exp(x); %cria a variável y2 (exponencial de -x) para os valores de x%
y3 = exp(-x); %cria a variável y3 (exponencial de x) para os valores de x%

p=plot(x,y1,x,y2,x,y3) %Cria o gráfico das três funções
p(1).LineWidth=1; %Define estilos de linha para cada uma das funções
p(2).LineStyle='--';
p(2).LineWidth=1.5;
p(3).LineStyle=':';
p(3).LineWidth=1.5;

grid on %Ativa o grid do gráfico
legend('cosh(z)','exp(z)','exp(-z)','Location','bestoutside')
title('Funções cosseno hiperbólico e exponeciais de z')
%%Cria e edita elementos de apoio (i.e.legenda, título) do gráfico 