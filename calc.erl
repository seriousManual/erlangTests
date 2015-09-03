-module(calc).
-compile(export_all).

rpm(List) when is_list(List) ->
  [Res] = lists:foldl(fun rpm/2, [], string:tokens(List, " ")),
  Res.

rpm("+", [X1, X2 | T]) -> [X2 + X1 | T];
rpm("-", [X1, X2 | T]) -> [X2 - X1 | T];
rpm("*", [X1, X2 | T]) -> [X2 * X1 | T];
rpm("/", [X1, X2 | T]) -> [X2 / X1 | T];
rpm(InputElement, Stack) -> [convert(InputElement) | Stack].

convert(N) ->
  case string:to_float(N) of
    {error, no_float} -> list_to_integer(N);
    {F, _} -> F
  end.