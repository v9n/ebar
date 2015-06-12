-module(ebar).

-author("<Vinh> kurei@axcoto.com").
-import(gen_udp, [open/2, close/1, send/4]).

-export([run/1]).

run(Color) ->
  {ok, Socket} = open(0, [binary]),
  io:format("client opened socket=~p~n", [Socket]),
  ok = send(Socket, "127.0.0.1", 1738, Color),
  close(Socket).
