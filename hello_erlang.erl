-module(hello_erlang).
-export([print_hello/1]).

print_hello(Name) ->
  io:fwrite("Hello ~s ~n", [Name]).