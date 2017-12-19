% Aqui nós declaramos nosso módulo.
% 
% Por padrão, todo o módulo Erlang
% deve conter o mesmo nome de sua definição
% nesse caso `hello_erlang` -> `hello_erlang.erl`.
-module(hello_erlang).

% Aqui nós exportamos nossa função
% `print_hello`. Com isso outros
% módulos poderam usar funções desse módulo.
%
% Dada a sintaxe, `print_hello`
% é o nome da função e o número `1` é
% a quantidade de argumentos que podem
% ser passados a função. Podemos declarar
% quantos export quisermos.
-export([print_hello/1]).

%% Aqui definimos nossa primeira função
%% em Erlang, ela recebe apenas um argumento `Name`.
%% 
%% A função apenas concatena "Hello" e Name
%% depois escreve no console.
print_hello(Name) ->
  io:fwrite("Hello ~s ~n", [Name]).