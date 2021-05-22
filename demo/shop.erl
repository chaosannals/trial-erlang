-module(shop).
-export([cost/1, total/1, total2/1, total3/1]).
-import(lists, [map/2, sum/1]).

cost(oranges) -> 5;
cost(newspaper) -> 8;
cost(apple) -> 2;
cost(pear) -> 9;
cost(milk) -> 7.

total([{What, N}| T]) -> cost(What) * N + total(T);
total([]) -> 0.

total2(L) -> sum(map(fun({What, N}) -> cost(What) * N end, L)).

total3(L) -> sum([cost(What) * N || {What, N} <- L]).
