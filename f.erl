-module(f).
-compile(export_all).

head([H|_]) -> H.

second([_,H|_]) -> H.

same(X,X) -> true;
same(_,_) -> false.

old_enough(X) when X >= 16, X =< 104 -> true;
old_enough(_) -> false.