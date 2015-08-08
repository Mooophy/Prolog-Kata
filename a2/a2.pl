%Part B
:- op(700, xfy, =>>).
=>>(L, R) :-
  (L - 2 * R)  * (R - 2 * L) =:= 0.

:- op(700, fx, isSingleton).
isSingleton(List) :- length(List, 1).
