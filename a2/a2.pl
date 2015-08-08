%Part B
:- op(700, xfy, =>>).
=>>(L, R) :-
  (L - 2 * R)  * (R - 2 * L) =:= 0.

:- op(700, fx, isSingleton).
isSingleton(List) :- 
  length(List, 1).

%Part C
totalInList([], 0).
totalInList([H|T], N) :-
  totalInList(T, N1), N is N1 + H. 
  
