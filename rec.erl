-module(rec).

-compile(export_all).

len([]) -> 0;
len([_|T]) -> 1 + len(T).

tail_len(L) -> tail_len(L,0).

tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T,Acc+1).

tail_fac(N) -> tail_fac(N, 1).

tail_fac(0, Acc) -> Acc;
tail_fac(N, Acc) when N > 0 -> tail_fac(N-1, Acc*N).


tail_fib(N) -> tail_fib(N, 0, 1, 0).

tail_fib(N, N, X, Y) -> X + Y;
tail_fib(N, 0, _, _) -> tail_fib(N, 1, 1, 0);
tail_fib(N, 1, _, _) -> tail_fib(N, 2, 1, 1);
tail_fib(N, A, X, Y) -> tail_fib(N, A+1, X+Y, X).


duplicate(0, _) -> [];
duplicate(N, Term) -> [Term|duplicate(N-1, Term)].

tail_dup(N, Term) -> tail_dup(N, Term, []).

tail_dup(0, _, Acc) -> Acc;
tail_dup(N, Term, Acc) -> tail_dup(N-1, Term, [Term|Acc]).



reverse([]) -> [];
reverse([H|T]) -> reverse(T) ++ [H].

tail_reverse(List) -> tail_reverse(List, []).

tail_reverse([], Acc) -> Acc;
tail_reverse([H|T], Acc) -> tail_reverse(T, [H|Acc]).
