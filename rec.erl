-module(rec).
-author("mer").

-compile(export_all).


fib(N) -> fib(N, 0, 0, 1).

fib(N, N, X, Y) -> X + Y;
fib(N, 0, _, _) -> fib(N, 1, 0, 1);
fib(N, 1, _, _) -> fib(N, 2, 1, 1);
fib(N, Current, X, Y) -> fib(N, Current + 1, Y, X+Y).