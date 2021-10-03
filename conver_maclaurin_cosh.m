%% Nome do script: conver_maclaurin_cosh
% Descrição: Cria um gráfico de uma aproximação da função cosh(z) usando
% um caso específico de Séries de Taylor (Série de Maclaurin)
% Premissas: Nenhuma
% Autores: aaguiarn, iggorcr
% $Data: 07 de Junho, 2021$
%---------------------------------------------------------

%% Faxina para assegurar a clareza e bom funcionamento do script%%
clear, clc, close all
%clear: remove as variáveis e funções da memória/área de trabalho%
%clc: Limpa o prompt de comando%
%close all: fecha todas as janelas de figuras atualmente abertas%
%%Fim da faxina%%

%-------------------------------------------------------
syms z %cria uma variável simbólica
f = cos(i*z); %Estabelece a funçao cosseno hiperbólico usando sua
%identidade com a função cossseno
T6 = taylor(f, z); % 
T8 = taylor(f, z, 'Order', 8);
T10 = taylor(f, z, 'Order', 10);

fplot([T6
    T8
    T10
    f]);
xlim([-6 6])
grid on

legend('cosh(z) por Série de Maclaurin (n^{6})',...
       'cosh(z) por Série de Maclaurin (n^{8})',...
       'cosh(z) por Série de Maclaurin (n^{10})',...
       'cosh(z)','Location','Best')
title('Aproximação por Série de Maclaurin para a função cosh(z)')
%%Fim do script%