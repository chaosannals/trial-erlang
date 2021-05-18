-module(flow).
-export([
    for/3,
    sum/1,
    map/2,
    quicksort/1,
    quicksort2/1,
    pythag/1
]).

for(I, Max, F) -> [F(I) | for(I+1, Max, F)];
for(Max, Max, F) -> [F(Max)].

sum([H|T]) -> H + sum(T);
sum([]) -> 0.

map(F, [H| T]) -> [F(H)| map(F, T)];
map(_, []) -> [].

quicksort([Pivot|T]) ->
    quicksort([X || X <- T, X < Pivot])
    ++ [Pivot] ++
    quicksort([X || X <- T, X >= Pivot]).

% TODO
quicksort2([Pivot|T]) -> 
    {L, B} = quicksort2i(Pivot, T, [], []),
    quicksort(L) ++ [Pivot] ++ quicksort(B).
quicksort2i(Pivot, [H|T], L, B) ->
    if  H < Pivot -> quicksort2i(Pivot, T, [H, L], B);
        H >= Pivot -> quicksort2i(Pivot, T, L, [H, B])
    end;
quicksort2i(_, [], L, B) -> {L, B}.

pythag(N) -> [
    {A, B, C} ||
    A <- lists:seq(1, N),
    B <- lists:seq(1, N),
    C <- lists:seq(1, N),
    A + B + C =< N,
    A*A + B*B =:= C*C
].